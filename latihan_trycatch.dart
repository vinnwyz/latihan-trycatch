
import 'dart:convert';

import 'package:http/http.dart' as http;


void main () async {

  //  Future<void> tarikdata() async {
  //      var response = await http.get(
  //       Uri.parse('https://jsonplaceholder.typicode.com/posts')
  //      );

  //      var data = jsonDecode(response.body);
  //      print(data[0]['title']);
  //  }

  //   await tarikdata();

  
   Future<void> tarikdata() async {
       var response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/users')
       );

       var data = jsonDecode(response.body);
        // print(data[1]);
       print('nama saya ${data[1]['name']}, username saya ${data[1]['email']}, kota saya ${data[1]['address']['city']}');
       
  
   }

    await tarikdata();

  


}