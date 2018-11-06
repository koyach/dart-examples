import 'dart:io';
import 'dart:convert';

void httpRestExample() {
  HttpClient()
    .getUrl(Uri.parse('https://dart-75817.firebaseio.com/.json'))
    .then((request) => request.close())
    .then((response) =>
      response.transform(Utf8Decoder()).listen(print)); // transforms and prints the response
}