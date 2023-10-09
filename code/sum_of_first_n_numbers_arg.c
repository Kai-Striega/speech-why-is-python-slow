#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>

// To see asm (-O3) https://godbolt.org/z/4xjqYaY73
// To see asm (-O0) https://godbolt.org/z/8Y498c3hs
int main(int argc, const char *argv[]) {
    char *end;
    uint64_t limit = (uint64_t) strtoull(argv[1], &end, 10);
    uint64_t total = 0;
    for (uint64_t i = 0; i < limit; ++i) {
        total += i;
    }
    printf("total=%" PRIu64 "\n", total);
}
