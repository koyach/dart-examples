import 'package:benchmark_harness/benchmark_harness.dart';

class BenchmarkString extends BenchmarkBase {
  const BenchmarkString() : super("String");
  static String inputString;
  static String outputString;
  static var stringInStringOut;

  static void main(var func, final String string) {
    inputString = string; 
    stringInStringOut = func;
    new BenchmarkString().report();
  }

  // The benchmark code.
  void run() {
    for (var i = 0; i < 10000; i++) {
      outputString = stringInStringOut(inputString);
    }
  }
}
