void fizzBuzz([int until = 100]) {

  for(var count = 0; count <= until; count++) {
    count++;
  
    if ( (count % 3 == 0) && (count % 5 == 0) ) {
      print("$count FizzBuzz");
    }
    else {
  
      if (count % 3 == 0)
        print("$count Fizz");

      if (count % 5 == 0)
        print("$count Buzz");
    }
  }
}

String reverseString(String str) {
  var reversed = "";

  for(var pos = str.length - 1; pos >= 0; pos--) {
    reversed += str[pos];
  }

  return reversed;
}

String reverseWordsInString(String str)
{
  List words = str.split(" ");
  String out = "";

  words.reversed.forEach((word) => out += word + " ");
  return out.trim();
}

String reverseWordsInStringEfficient(String str)
{
  List words = str.split(" ");
  StringBuffer buffer = StringBuffer();
  
  words = words.reversed.toList();
  buffer.writeAll(words, " ");
  
  return buffer.toString();
}

void benchmarkStringAndStringBuff(String str)
{
  String outStr;
  DateTime start; 
  int duration;

  start = DateTime.now();
  for (var i = 0; i < 10000; i++) {
    outStr = reverseWordsInString(str);
  }

  duration = DateTime.now().microsecondsSinceEpoch - start.microsecondsSinceEpoch;
  print("$outStr ---- reverseWordsInString time: $duration");

  start = DateTime.now();
  for (var i = 0; i < 10000; i++) {
    outStr = reverseWordsInStringEfficient(str);
  }

  duration = DateTime.now().microsecondsSinceEpoch - start.microsecondsSinceEpoch;
  print("$outStr ---- reverseWordsInStringEfficient time: $duration");

}

void main() {
  fizzBuzz();
  print(reverseString("Hello Dart!"));
  print(reverseWordsInString("The quick brown fox jumps over the lazy dog"));
  print(reverseWordsInStringEfficient("The quick brown fox jumps over the lazy dog"));
  print("---- ----");

  benchmarkStringAndStringBuff("""
  Lorem ipsum dolor amet banh mi viral locavore cardigan franzen whatever man bun cold-pressed meditation four loko street art put a bird on it. Fixie pickled beard street art raw denim. Single-origin coffee bushwick beard occupy, ennui actually meh schlitz vexillologist prism. Jean shorts shoreditch yr helvetica pabst flexitarian sriracha trust fund keytar cloud bread green juice. Microdosing semiotics keffiyeh kogi, air plant authentic coloring book organic pabst hashtag vexillologist seitan. Ugh post-ironic vexillologist austin cliche.
  Spicy jalapeno bacon ipsum dolor amet aute voluptate tail, short loin pork belly eiusmod pastrami chuck ut ham in. Commodo ea pariatur minim fatback, biltong hamburger ground round spare ribs turducken officia. Occaecat kevin fugiat proident t-bone est pork loin shankle culpa pork fatback ut dolore. Hamburger mollit ribeye eiusmod, in do corned beef id. Beef ribs nostrud magna ham strip steak ut sed. Velit shoulder bacon boudin pancetta minim chicken do.
  """);
}