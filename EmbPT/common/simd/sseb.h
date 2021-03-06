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

#ifndef __EMBREE_SSEB_H__
#define __EMBREE_SSEB_H__

namespace embree
{
  /*! 4-wide SSE bool type. */
  struct sseb
  {
    union { __m128 m128; int32 v[4]; };

    ////////////////////////////////////////////////////////////////////////////////
    /// Constructors, Assignment & Cast Operators
    ////////////////////////////////////////////////////////////////////////////////

    typedef sseb Mask;

    __forceinline sseb           ( ) {}
    __forceinline sseb           ( const sseb& other ) { m128 = other.m128; }
    __forceinline sseb& operator=( const sseb& other ) { m128 = other.m128; return *this; }

    __forceinline sseb( const __m128  input ) : m128(input) {}
    __forceinline sseb( const __m128i input ) : m128(_mm_castsi128_ps(input)) {}
    __forceinline sseb( const __m128d input ) : m128(_mm_castpd_ps(input)) {}

    __forceinline sseb( const bool input )
      : m128(input ? _mm_castsi128_ps(_mm_cmpeq_epi32(_mm_setzero_si128(), _mm_setzero_si128())) : _mm_setzero_ps()) {}
    __forceinline sseb( const bool input_0, const bool input_1, const bool input_2, const bool input_3 )
      : m128(_mm_lookupmask_ps[(size_t(input_3) << 3) | (size_t(input_2) << 2) | (size_t(input_1) << 1) | size_t(input_0)]) {}

    __forceinline operator const __m128&( void ) const { return m128; }
    __forceinline operator const __m128i( void ) const { return _mm_castps_si128(m128); }
    __forceinline operator const __m128d( void ) const { return _mm_castps_pd(m128); }

    ////////////////////////////////////////////////////////////////////////////////
    /// Constants
    ////////////////////////////////////////////////////////////////////////////////

    __forceinline sseb( FalseTy ) : m128(_mm_setzero_ps()) {}
    __forceinline sseb( TrueTy  ) : m128(_mm_castsi128_ps(_mm_cmpeq_epi32(_mm_setzero_si128(), _mm_setzero_si128()))) {}

    ////////////////////////////////////////////////////////////////////////////////
    /// Properties
    ////////////////////////////////////////////////////////////////////////////////

    __forceinline bool   operator []( const size_t index ) const { assert(index < 4); return (_mm_movemask_ps(m128) >> index) & 1; }
    __forceinline int32& operator []( const size_t index )       { assert(index < 4); return v[index]; }
  };

  ////////////////////////////////////////////////////////////////////////////////
  /// Unary Operators
  ////////////////////////////////////////////////////////////////////////////////

  __forceinline const sseb operator !( const sseb& a ) { return _mm_xor_ps(a, sseb(True)); }


  ////////////////////////////////////////////////////////////////////////////////
  /// Binary Operators
  ////////////////////////////////////////////////////////////////////////////////

  __forceinline const sseb operator &( const sseb& a, const sseb& b ) { return _mm_and_ps(a, b); }
  __forceinline const sseb operator |( const sseb& a, const sseb& b ) { return _mm_or_ps (a, b); }
  __forceinline const sseb operator ^( const sseb& a, const sseb& b ) { return _mm_xor_ps(a, b); }

  __forceinline sseb operator &=( sseb& a, const sseb& b ) { return a = a & b; }
  __forceinline sseb operator |=( sseb& a, const sseb& b ) { return a = a | b; }
  __forceinline sseb operator ^=( sseb& a, const sseb& b ) { return a = a ^ b; }


  ////////////////////////////////////////////////////////////////////////////////
  /// Comparison Operators
  ////////////////////////////////////////////////////////////////////////////////

  __forceinline const sseb operator !=( const sseb& a, const sseb& b ) { return _mm_xor_ps(a, b); }
  __forceinline const sseb operator ==( const sseb& a, const sseb& b ) { return _mm_cmpeq_epi32(a, b); }


  ////////////////////////////////////////////////////////////////////////////////
  /// Reduction Operations
  ////////////////////////////////////////////////////////////////////////////////

  __forceinline bool reduce_and( const sseb& a ) { return _mm_movemask_ps(a) == 0xf; }
  __forceinline bool reduce_or ( const sseb& a ) { return _mm_movemask_ps(a) != 0x0; }
  __forceinline bool all       ( const sseb& b ) { return _mm_movemask_ps(b) == 0xf; }
  __forceinline bool any       ( const sseb& b ) { return _mm_movemask_ps(b) != 0x0; }
  __forceinline bool none      ( const sseb& b ) { return _mm_movemask_ps(b) == 0x0; }

  __forceinline size_t movemask( const sseb& a ) { return _mm_movemask_ps(a); }

  ////////////////////////////////////////////////////////////////////////////////
  /// Movement/Shifting/Shuffling Functions
  ////////////////////////////////////////////////////////////////////////////////

  template<size_t index_0, size_t index_1, size_t index_2, size_t index_3>
    __forceinline const sseb shuffle( const sseb& a )
  {
    return _mm_shuffle_epi32(a, _MM_SHUFFLE(index_3, index_2, index_1, index_0));
  }

  template<> __forceinline const sseb shuffle<0, 0, 2, 2>( const sseb& a ) { return _mm_moveldup_ps(a); }
  template<> __forceinline const sseb shuffle<1, 1, 3, 3>( const sseb& a ) { return _mm_movehdup_ps(a); }
  template<> __forceinline const sseb shuffle<0, 1, 0, 1>( const sseb& a ) { return _mm_movedup_pd(a); }
  template<size_t index> __forceinline const sseb expand( const sseb& a ) { return shuffle<index, index, index, index>(a); }

  template<size_t index_0, size_t index_1, size_t index_2, size_t index_3>
    __forceinline const sseb shuffle( const sseb& a, const sseb& b )
  {
    return _mm_shuffle_ps(a, b, _MM_SHUFFLE(index_3, index_2, index_1, index_0));
  }

  __forceinline const sseb unpacklo( const sseb& a, const sseb& b ) { return _mm_unpacklo_ps(a, b); }
  __forceinline const sseb unpackhi( const sseb& a, const sseb& b ) { return _mm_unpackhi_ps(a, b); }

  ////////////////////////////////////////////////////////////////////////////////
  /// Output Operators
  ////////////////////////////////////////////////////////////////////////////////

  inline std::ostream& operator<<(std::ostream& cout, const sseb& a) {
    return cout << "<" << a[0] << ", " << a[1] << ", " << a[2] << ", " << a[3] << ">";
  }
}

#endif
