import 'input.dart';
import 'math.dart';
import 'ui.dart';
import 'operation.dart';

class App extends UI {
  bool isAppRunning = true;

  void run() {
    do {
      try {
        drawMenu();
        int inputOperation = Input.readCharacter() - 1;

        switch (Operation.values[inputOperation]) {
          case Operation.addition:
            {
              int firstNumber =
                  Input.readCharacter(inputMessage: "Birinci sayıyı giriniz: ");
              int secondNumber =
                  Input.readCharacter(inputMessage: "İkinci sayıyı giriniz: ");

              writeResult(Math.addition(firstNumber, secondNumber));
            }
            break;
          case Operation.subtraction:
            {
              int firstNumber =
                  Input.readCharacter(inputMessage: "Birinci sayıyı giriniz: ");
              int secondNumber =
                  Input.readCharacter(inputMessage: "İkinci sayıyı giriniz: ");

              writeResult(Math.subtraction(firstNumber, secondNumber));
            }
            break;
          case Operation.multiplication:
            {
              int firstNumber =
                  Input.readCharacter(inputMessage: "Birinci sayıyı giriniz: ");
              int secondNumber =
                  Input.readCharacter(inputMessage: "İkinci sayıyı giriniz: ");

              writeResult(Math.multiplication(firstNumber, secondNumber));
            }
            break;
          case Operation.division:
            {
              int firstNumber =
                  Input.readCharacter(inputMessage: "Birinci sayıyı giriniz: ");
              int secondNumber =
                  Input.readCharacter(inputMessage: "İkinci sayıyı giriniz: ");

              writeResult(Math.division(firstNumber, secondNumber));
            }
            break;
          case Operation.exit:
            {
              isAppRunning = false;
              writeEndMessage();
            }
            break;
          default:
            {
              writeInvalidMessage();
            }
        }
      } catch (e) {
        writeInvalidMessage();
      }
    } while (isAppRunning);
  }
}
