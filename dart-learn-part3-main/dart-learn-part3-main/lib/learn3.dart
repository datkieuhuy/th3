import 'dart:io';
import 'dart:math';
const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

void printName() {
  print("My name is Nguyen Dinh Quyet.");
}
void evenNumbersBetweenIntervals(){
  print("Please enter A:");
  int a = int.parse(stdin.readLineSync()!);
  print("Please enter B:");
  int b = int.parse(stdin.readLineSync()!);
  List<int> evenNumber = [];
  if(a > b){
    int temp = b;
    b = a;
    a = temp;
  }
  for(int i =a ;i<b;i++){
    if(i % 2==0){
      evenNumber.add(i);
    }
  }
  print(evenNumber);
}
String randomPassword(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
void areaOfCircle(){
  const pi = 3.14;
  print("Please enter radius of circle:");
  double radius = double.parse(stdin.readLineSync()!);
  double area = radius*radius * pi;
  print('Result = ${area}');
}
void pythagoreanTheorem(){
  print("Please enter side of first right angle:");
  num asideOne = double.parse(stdin.readLineSync()!);
  print("Please enter side of first right angle:");
  num asideTwo = double.parse(stdin.readLineSync()!);
  double result = sqrt(pow(asideOne, 2)+ pow(asideTwo,2));
  print('Result = ${result}');
} 
void  reverseString(){
  print("Please enter string:");
  String text = stdin.readLineSync()!;
  print(String.fromCharCodes(text.runes.toList().reversed)); 
}
void calculatePower(){
  print("Please enter A:");
  num a = int.parse(stdin.readLineSync()!);
  print("Please enter exponent for A:");
  num ex = int.parse(stdin.readLineSync()!);
  num retval = 1;
  for (int i = 0; i < ex; i++) {
    retval *= a;
  }
  print('Result = ${retval}');

}