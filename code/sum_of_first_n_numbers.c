#include <stdio.h>
#include <inttypes.h>

int main() {
    const uint64_t limit = 6074000999;
    uint64_t total = 0;
    for (uint64_t i = 0; i < limit; ++i) {
        total += i;
    }
    printf("total=%" PRIu64 "\n", total);
}
