import 'dart:io';

void main() {
  
  print('Enter operator(+, -, *, /): ');
  var oparator = stdin.readLineSync();
  print('Enter first number: ');

  /**
   * You are getting an error because double.parse takes a String as 
   * argument but stdin.readLineSync() are returning String? which are
   * a type which can be a String or null (where String only allows 
   * String and can never be null).
   * 
   * By adding '!' to end of readLineSync function you are telling Dart 
   * that you are sure the value is not null and the analyzer should 
   * just accept the value as if it is never null.
   */

  var numberOne = double.parse(stdin.readLineSync()!);
  print('Enter second number: ');
  var numberTwo = double.parse(stdin.readLineSync()!);
  
  displayResult(operation(oparator, numberOne, numberTwo));
}

double operation(var oparator, double numberOne, double numberTwo) {
  
  var result = 0.0;
  
  switch(oparator) {
    case '+':
      result = numberOne + numberTwo;
      break;
    case '-':
      result = numberOne - numberTwo;
      break;
    case '*':
      result = numberOne * numberTwo;
      break;
    case '/':
      result = numberOne / numberTwo;
      break;
  }
  
  return result;
}

void displayResult(double result) {
  print('The result is : $result');
}