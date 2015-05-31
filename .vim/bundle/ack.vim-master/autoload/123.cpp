template <bool B, typename X, typename Y>
struct get_type {
    typedef X type;
};

template <typename X, typename Y>
struct get_type<false, X, Y> {
    typedef Y type;
};

struct not_exist {
    static const bool is_exist = false;
};

template <unsigned N, unsigned START, unsigned LEN>
struct find_divisor {
    static const bool is_exist = find_divisor<N, START, LEN/2>::is_exist
        || get_type< START*START<=N, find_divisor<N, START+(LEN/2), LEN-(LEN/2)>, not_exist >::type::is_exist;
};

template <unsigned N, unsigned START>
struct find_divisor<N, START, 1> {
    static const bool is_exist = (N % START == 0);
};

template <unsigned N>
struct is_prime_number {
    static const bool result = ! find_divisor<N, 2, N-2>::is_exist;
};

template <> struct is_prime_number<2> { static const bool result = true; };
template <> struct is_prime_number<1> { static const bool result = false; };
template <> struct is_prime_number<0> { static const bool result = false; };

#define POW2_0(x) is_prime_number<x>::result,
//for i in {0..15}; do echo "#define POW2_$((i+1))(x) POW2_$i(x) POW2_$i(x+$((1<<i)))"; done
#define POW2_1(x) POW2_0(x) POW2_0(x+1)
#define POW2_2(x) POW2_1(x) POW2_1(x+2)
#define POW2_3(x) POW2_2(x) POW2_2(x+4)
#define POW2_4(x) POW2_3(x) POW2_3(x+8)
#define POW2_5(x) POW2_4(x) POW2_4(x+16)
#define POW2_6(x) POW2_5(x) POW2_5(x+32)
#define POW2_7(x) POW2_6(x) POW2_6(x+64)
#define POW2_8(x) POW2_7(x) POW2_7(x+128)
#define POW2_9(x) POW2_8(x) POW2_8(x+256)
#define POW2_10(x) POW2_9(x) POW2_9(x+512)
#define POW2_11(x) POW2_10(x) POW2_10(x+1024)
#define POW2_12(x) POW2_11(x) POW2_11(x+2048)
#define POW2_13(x) POW2_12(x) POW2_12(x+4096)
#define POW2_14(x) POW2_13(x) POW2_13(x+8192)
#define POW2_15(x) POW2_14(x) POW2_14(x+16384)
#define POW2_16(x) POW2_15(x) POW2_15(x+32768)

#define GEN_(S, N) POW2_##N(S)
#define GEN(S, N) GEN_(S, N)

#ifndef SS
#define SS 0
#endif

#ifndef NN
#define NN 16
#endif

static const bool IS_PRIME_NUM[] = {
    GEN((SS), NN)
};

#include <cstdio>

int main() {
    printf("[%u, %u]\n", SS, (SS)+(1<<NN)-1);
    for(unsigned i = 0; i < sizeof(IS_PRIME_NUM)/sizeof(IS_PRIME_NUM[0]); i++) {
        if(IS_PRIME_NUM[i]) {
            printf("%u\n", (SS)+i);
        }
    }
    return 0;
}
