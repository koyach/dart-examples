int calculate42() {
  return 42;
}

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
