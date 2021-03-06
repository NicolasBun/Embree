// ======================================================================== //
// Copyright 2009-2011 Intel Corporation                                    //
//                                                                          //
// Licensed under the Apache License, Version 2.0 (the "License");          //
// you may not use this file except in compliance with the License.         //
// You may obtain a copy of the License at                                  //
//                                                                          //
//     http://www.apache.org/licenses/LICENSE-2.0                           //
//                                                                          //
// Unless required by applicable law or agreed to in writing, software      //
// distributed under the License is distributed on an "AS IS" BASIS,        //
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. //
// See the License for the specific language governing permissions and      //
// limitations under the License.                                           //
// ======================================================================== //

#include <iostream>

#include "thread.h"
#include "sysinfo.h"

////////////////////////////////////////////////////////////////////////////////
/// Windows Platform
////////////////////////////////////////////////////////////////////////////////

#ifdef __WIN32__

#define WIN32_LEAN_AND_MEAN
#include <windows.h>

namespace embree
{
  /*! set the affinity of a given thread */
  void setAffinity(HANDLE thread, int affinity)
  {
    if (affinity < 0)
      return;

#if (_WIN32_WINNT >= 0x0601)
    int groups = GetActiveProcessorGroupCount();
    int totalProcessors = 0, group = 0, number = 0;
    for (int i = 0; i < groups; i++) {
      int processors = GetActiveProcessorCount(i);
      if (totalProcessors + processors > affinity) {
        group = i;
        number = affinity - totalProcessors;
        break;
      }
      totalProcessors += processors;
    }

    GROUP_AFFINITY groupAffinity;
    groupAffinity.Group = (WORD)group;
    groupAffinity.Mask = (KAFFINITY)(uint64(1) << number);
    groupAffinity.Reserved[0] = 0;
    groupAffinity.Reserved[1] = 0;
    groupAffinity.Reserved[2] = 0;
    if (!SetThreadGroupAffinity(thread, &groupAffinity, NULL))
      throw std::runtime_error("cannot set thread group affinity");

    PROCESSOR_NUMBER processorNumber;
    processorNumber.Group = group;
    processorNumber.Number = number;
    processorNumber.Reserved = 0;
    if (!SetThreadIdealProcessorEx(thread, &processorNumber, NULL))
      throw std::runtime_error("cannot set thread ideal processor");
#else
    if (!SetThreadAffinityMask(thread, DWORD_PTR(uint64(1) << affinity)))
      throw std::runtime_error("cannot set thread affinity mask");
    if (SetThreadIdealProcessor(thread, (DWORD)affinity) == (DWORD)-1)
      throw std::runtime_error("cannot set thread ideal processor");
#endif
  }

  /*! creates a hardware thread running on specific core */
  thread_t createThread(thread_func f, void* arg, size_t stack_size, int affinity)
  {
    HANDLE thread = CreateThread(NULL, stack_size, (LPTHREAD_START_ROUTINE)f, arg, 0, NULL);
    if (thread == NULL) throw std::runtime_error("cannot create thread");
    setAffinity(thread, affinity);
    return thread_t(thread);
  }

  /*! set affinity of the calling thread */
  void setAffinity(int affinity) {
    setAffinity(GetCurrentThread(), affinity);
  }

  /*! the thread calling this function gets yielded */
  void yield() {
    Sleep(0);
  }

  /*! waits until the given thread has terminated */
  void join(thread_t tid) {
    WaitForSingleObject(HANDLE(tid), INFINITE);
    CloseHandle(HANDLE(tid));
  }

  /*! destroy a hardware thread by its handle */
  void destroyThread(thread_t tid) {
    TerminateThread(HANDLE(tid),0);
    CloseHandle(HANDLE(tid));
  }

  /*! creates thread local storage */
  tls_t createTls() {
    return tls_t(TlsAlloc());
  }

  /*! set the thread local storage pointer */
  void setTls(tls_t tls, void* const ptr) {
    TlsSetValue(DWORD(size_t(tls)), ptr);
  }

  /*! return the thread local storage pointer */
  void* getTls(tls_t tls) {
    return TlsGetValue(DWORD(size_t(tls)));
  }

  /*! destroys thread local storage identifier */
  void destroyTls(tls_t tls) {
    TlsFree(DWORD(size_t(tls)));
  }
}

#endif

////////////////////////////////////////////////////////////////////////////////
/// Linux Platform
////////////////////////////////////////////////////////////////////////////////

#ifdef __LINUX__
namespace embree
{
  /*! set affinity of the calling thread */
  void setAffinity(int affinity)
  {
    cpu_set_t cset;
    CPU_ZERO(&cset);
    CPU_SET(affinity, &cset);
    if (pthread_setaffinity_np(pthread_self(), sizeof(cset), &cset) != 0)
      std::cerr << "Thread: cannot set affinity" << std::endl;
  }
}
#endif

////////////////////////////////////////////////////////////////////////////////
/// MacOSX Platform
////////////////////////////////////////////////////////////////////////////////

#ifdef __MACOSX__

#include <mach/thread_act.h>
#include <mach/thread_policy.h>
#include <mach/mach_init.h>

namespace embree
{
  /*! set affinity of the calling thread */
  void setAffinity(int affinity)
  {
    if (affinity >= 0) {
      thread_affinity_policy ap;
      ap.affinity_tag = affinity;
      if (thread_policy_set(mach_thread_self(),THREAD_AFFINITY_POLICY,(integer_t*)&ap,THREAD_AFFINITY_POLICY_COUNT) != KERN_SUCCESS)
        std::cerr << "Thread: cannot set affinity" << std::endl;
    }
  }
}
#endif

////////////////////////////////////////////////////////////////////////////////
/// Unix Platform
////////////////////////////////////////////////////////////////////////////////

#ifdef __UNIX__

#include <pthread.h>
#include <sched.h>

namespace embree
{
  struct ThreadStartupData {
    int affinity;
    thread_func f;
    void* arg;
  };

  static void* threadStartup(ThreadStartupData* parg)
  {
    ThreadStartupData arg = *parg; delete parg; parg = NULL;
    setAffinity(arg.affinity);
    arg.f(arg.arg);
    return NULL;
  }

  /*! creates a hardware thread running on specific core */
  thread_t createThread(thread_func f, void* arg, size_t stack_size, int affinity)
  {
    pthread_attr_t attr;
    pthread_attr_init(&attr);
    if (stack_size > 0) pthread_attr_setstacksize (&attr, stack_size);

    pthread_t* tid = new pthread_t;
    ThreadStartupData* startup = new ThreadStartupData;
    startup->f = f;
    startup->arg = arg;
    startup->affinity = affinity;

    if (pthread_create(tid,&attr,(void*(*)(void*))threadStartup,startup) != 0)
      throw std::runtime_error("pthread_create");

    return thread_t(tid);
  }

  /*! the thread calling this function gets yielded */
  void yield() {
    sched_yield(); // works also under MacOSX
  }

  /*! waits until the given thread has terminated */
  void join(thread_t tid) {
    if (pthread_join(*(pthread_t*)tid, NULL) != 0)
      throw std::runtime_error("pthread_join");
    delete (pthread_t*)tid;
  }

  /*! destroy a hardware thread by its handle */
  void destroyThread(thread_t tid) {
    pthread_cancel(*(pthread_t*)tid);
    delete (pthread_t*)tid;
  }

  /*! creates thread local storage */
  tls_t createTls() {
    pthread_key_t* key = new pthread_key_t;
    if (pthread_key_create(key,NULL) != 0)
      throw std::runtime_error("pthread_key_create");

    return tls_t(key);
  }

  /*! return the thread local storage pointer */
  void* getTls(tls_t tls) {
    return pthread_getspecific(*(pthread_key_t*)tls);
  }

  /*! set the thread local storage pointer */
  void setTls(tls_t tls, void* const ptr) {
    if (pthread_setspecific(*(pthread_key_t*)tls, ptr) != 0)
      throw std::runtime_error("pthread_setspecific");
  }

  /*! destroys thread local storage identifier */
  void destroyTls(tls_t tls) {
    if (pthread_key_delete(*(pthread_key_t*)tls) != 0)
      throw std::runtime_error("pthread_key_delete");
    delete (pthread_key_t*)tls;
  }
}
#endif
