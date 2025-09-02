#include <stdio.h>

int main() {
    const char* tasks[] = {
        "Task 1: Write project setup",
        "Task 2: Test the C tasks app",
        "Task 3: Learn GitHub Codespaces"
    };

    int count = sizeof(tasks)/sizeof(tasks[0]);
    printf("My Tasks:\n");
    for (int i = 0; i < count; i++) {
        printf("%d. %s\n", i+1, tasks[i]);
    }

    return 0;
}
