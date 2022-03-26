import 'dart:io';

void main(){
  int n1, n2 , userChoice;
  stdout.write('Enter first number: ');
  n1 = int.parse(stdin.readLineSync()!);
  stdout.write('Enter second number: ');
  n2 = int.parse(stdin.readLineSync()!);

  String message = '''
  Select operator
  1. Addition
  2. Subtraction
  3. Multiplication
  4. Division
  Your choice ?
  ''';
  stdout.write(message);
  userChoice = int.parse(stdin.readLineSync()!);

  if (userChoice == 1){
    print('result: ${n1+n2}');
  }

  if (userChoice == 2){
    print('result: ${n1-n2}');
  }

  if (userChoice == 3){
    print('result: ${n1*n2}');
  }

  if(userChoice == 4){
    print('result: ${n1/n2}');
  }

  if(userChoice >= 5 || userChoice == 0 || userChoice <-1 ){
    print('incorrect choice');
  }
}