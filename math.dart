class Math {
  static int addition(int firstNumber, int secondNumber) {
    return firstNumber + secondNumber;
  }

  static int subtraction(int firstNumber, int secondNumber) {
    return firstNumber - secondNumber;
  }

  static int multiplication(int firstNumber, int secondNumber) {
    return firstNumber * secondNumber;
  }

  static double division(int firstNumber, int secondNumber) {
    if (secondNumber == 0) {
      throw IntegerDivisionByZeroException();
    } else {
      return firstNumber / secondNumber;
    }
  }
}
