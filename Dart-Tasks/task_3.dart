import 'dart:io';

class Calculator {
  double? num1;
  double? num2;

  Calculator(double num1, double num2) {
    this.num1 = num1;
    this.num2 = num2;
  }

  Future<void> add() async {
    if (num1 != null && num2 != null) {
      double sum = num1! + num2!;
      print("Sum = $sum");
    } else {
      print("Cannot perform addition. One or both numbers are null.");
    }
    await Future.delayed(Duration(seconds: 5));
  }

  Future<void> dif() async {
    if (num1 != null && num2 != null) {
      double difference = num1! - num2!;
      print("Difference = $difference");
    } else {
      print("Cannot perform subtraction. One or both numbers are null.");
    }
    await Future.delayed(Duration(seconds: 5));
  }

  Future<void> mul() async {
    if (num1 != null && num2 != null) {
      double multiplication = num1! * num2!;
      print("Multiplication = $multiplication");
    } else {
      print("Cannot perform multiplication. One or both numbers are null.");
    }
    await Future.delayed(Duration(seconds: 5));
  }

  Future<void> div() async {
    if (num1 != null && num2 != null) {
      try {
        double division = num1! / num2!;
        print("Division = $division");
      } catch (e) {
        print("Caught exception: $e");
      }
    } else {
      print("Cannot perform division. One or both numbers are null.");
    }
    await Future.delayed(Duration(seconds: 5));
  }
}

Future<void> main() async {
  print("Enter the first number");
  double number1 = double.parse(stdin.readLineSync()!);

  print("Enter the second number");
  double number2 = double.parse(stdin.readLineSync()!);

  Calculator test = Calculator(number1, number2);
  await test.add();
  await test.dif();
  await test.mul();
  await test.div();
}
