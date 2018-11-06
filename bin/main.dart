import 'package:dart_examples/dart_examples.dart';
import 'package:dart_examples/dart_http_example.dart';
import 'package:dart_examples/benchmark_harness.dart';

void main() {
  fizzBuzz();
  print(reverseString("Hello Dart!"));
  print(reverseWordsInString("The quick brown fox jumps over the lazy dog"));
  print(reverseWordsInStringEfficient("The quick brown fox jumps over the lazy dog"));
  print("---- ----");
  const String str = """
  Lorem ipsum dolor amet banh mi viral locavore cardigan franzen whatever man bun cold-pressed meditation four loko street art put a bird on it. Fixie pickled beard street art raw denim. Single-origin coffee bushwick beard occupy, ennui actually meh schlitz vexillologist prism. Jean shorts shoreditch yr helvetica pabst flexitarian sriracha trust fund keytar cloud bread green juice. Microdosing semiotics keffiyeh kogi, air plant authentic coloring book organic pabst hashtag vexillologist seitan. Ugh post-ironic vexillologist austin cliche.
  Spicy jalapeno bacon ipsum dolor amet aute voluptate tail, short loin pork belly eiusmod pastrami chuck ut ham in. Commodo ea pariatur minim fatback, biltong hamburger ground round spare ribs turducken officia. Occaecat kevin fugiat proident t-bone est pork loin shankle culpa pork fatback ut dolore. Hamburger mollit ribeye eiusmod, in do corned beef id. Beef ribs nostrud magna ham strip steak ut sed. Velit shoulder bacon boudin pancetta minim chicken do.
  """;

  BenchmarkString.main(reverseWordsInString, str);
  print(BenchmarkString.outputString);

  BenchmarkString.main(reverseWordsInStringEfficient,str);
  print(BenchmarkString.outputString);
 
  httpRestExample();
}
