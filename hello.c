#include <stdio.h>
#include <math.h>

static void my_real_log (int n);

extern int my_pow(int a, int b) {
    return pow(a, b);
}

extern void my_log(int n) {
   my_real_log(n);
}

static void my_real_log (int n) {
    printf("n is %d", n);
}
