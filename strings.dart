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

void main() {
  fizzBuzz();
  print(reverseString("Hello Dart!"));

}