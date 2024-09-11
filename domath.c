#include <stdio.h>
#include <mymath.h>

int main(){
    int firstNumber, secondNumber;
    firstNumber = 12;
    secondNumber = 12;

    int result1, result2, result3;
    result1 = addTwoNums(firstNumber, secondNumber);
    result2 = subTwoNums(firstNumber, secondNumber);
    result3 = multiNums(firstNumber, secondNumber);
    printf("Add %d, Sub %d, Multi %d\n", result1, result2, result3);
    return 0;
}