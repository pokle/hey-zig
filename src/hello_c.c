#include <stdio.h>

int main(int argc, char **argv) {
    const char *name = argc > 1 ? argv[1] : "C friend";
    printf("Hello from C via zig build, %s!\n", name);
    return 0;
}
