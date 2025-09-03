/* 
   This program prints a numbered list of tasks.
   Each task is stored as a string in an array.
   The program loops through them and prints them.
*/

#include <stdio.h>

int main() {
    // creates an array of string literals
    const char* tasks[] = {
        "Task 1: Write project setup",
        "Task 2: Test the C tasks app",
        "Task 3: Learn GitHub Codespaces"
    };
    // dividing gives the number of elements in the array
    int count = sizeof(tasks)/sizeof(tasks[0]);
    printf("My Tasks:\n");
    for (int i = 0; i < count; i++) {
        printf("%d. %s\n", i+1, tasks[i]);
    }
    // Exits the program. Returning 0 means 'success' to the operating system.
    return 0;
}
