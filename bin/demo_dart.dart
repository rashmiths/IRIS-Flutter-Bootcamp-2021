import 'package:demo_dart/demo_dart.dart' as demo_dart;

bool checkIfPrime(int n) {
  bool res = true;
  for (int i = 2; i < n; i++) {
    if (n % i == 0) {
      res = false;
    }
  }

  if (res == false) {
    return false;
  } else {
    return true;
  }
}

void main() {
  int a;
  a = 5;
  double b;
  b = 2.3;
  a = 2;
  print('I am a beginner ${b}');
  String success = 'Program Successfully Completed';
  for (int i = 1; i < 100; i++) {
    bool ifPrime = checkIfPrime(i);
    if (ifPrime == true)
      print('${i} is a prime number');
    else
      print('${i} is not a prime number');
  }
  print(success);
}
