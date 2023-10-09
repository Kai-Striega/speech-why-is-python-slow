#include <stdio.h>
#include <inttypes.h>

// To see asm (-O3) https://godbolt.org/z/fKT4nenTv
// To see asm (-O0) https://godbolt.org/z/PPzeKcE6r
int main(int argc, const char *argv[]) {
    uint64_t total = 0;
    for (uint64_t i = 0; i < argc; ++i) {
        total += i;
    }
    printf("total=%" PRIu64 "\n", total);
}
