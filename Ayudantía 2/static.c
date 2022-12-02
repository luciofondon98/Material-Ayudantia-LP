#include "stdio.h"
int i = 1;

void fun(){
    static int i = 0;
    i = i + 2;
    printf("%d\n",i);
}

int main(){
    printf("%d\n",i);
    int i = 3;
    printf("%d\n",i);
    fun();
    fun();
    printf("%d\n",i);
    fun();
    return 0;
}