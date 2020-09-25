package model;

public class Calculator {
    public static float calculate(float firstOreprand, float secondOperand, char operator){
        switch (operator){
            case '+' :
                return firstOreprand + secondOperand;
            case '-':
                return firstOreprand - secondOperand;
            case '*':
                return firstOreprand * secondOperand;
            case '/':
                if (secondOperand != 0){
                    return firstOreprand / secondOperand;
                }
                else {
                    throw new RuntimeException("can't divide by zero");
                }
            default:
                throw new RuntimeException("Invalid operation");
        }
    }
}
