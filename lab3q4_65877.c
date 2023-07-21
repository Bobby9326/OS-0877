#include <stdio.h>
int main() {
    int count = 0;
    int sum = 0;

    while(1) {
        int a;
        printf("Enter a positive integer : ");
        scanf("%d", &a);
        count += 1;
        sum += a;
        if (a <= 0) break;
        
    }
    
    printf("addition = %d average = %d\n", sum, sum / count,);
    return 0;
}