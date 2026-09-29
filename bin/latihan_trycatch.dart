// import 'package:latihan_trycatch/latihan_trycatch.dart' as latihan_trycatch;

// void main(List<String> arguments) {
//   print('Hello world: ${latihan_trycatch.calculate()}!');
// }

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

  
  //  Future<void> tarikdata() async {
  //      var response = await http.get(
  //       Uri.parse('https://jsonplaceholder.typicode.com/users')
  //      );

  //      var data = jsonDecode(response.body);
  //       // print(data[1]);
  //      print('nama saya ${data[1]['name']}, username saya ${data[1]['email']}, kota saya ${data[1]['address']['city']}');
       
  
  //  }

    // Future<List<dynamic>> tarikdata() async {
    //   try {
    //     var response = await http.get(
    //      Uri.parse('https://jsonplaceholder.typicode.com/users'),
    //     );
      
    //     var data = jsonDecode(response.body);

    //     return data;
    //   } catch (e) {
    //     return [];
    //   }
    // }

    // List<dynamic> hasil = await tarikdata();
    // print(hasil);

    //for, for in, foreach

    // for (var i = 0; i < hasil.length; i++) {
    //   print('===============================================================');
    //   print(
    //     '${hasil[i]['name']}      ${hasil[i]['username']}       ${hasil[i]['address']['city']}');
    // }


    //for in
    // for (var element in hasil) {
    //      print('===============================================================');
    //      print(
    //     '${element['name']}      ${element['username']}       ${element['address']['city']}'
    //     );
        
    //   }

      // hasil.forEach((element){
      //     print('===============================================================');
      //     print(
      //     '${element['name']}      ${element['username']}       ${element['address']['city']}',
      //   );

      // });



      
//   Future<void> tarikdata() async {
//         var response = await http.get(
//          Uri.parse('https://dummyjson.com/products'),
//         );
//         var data = jsonDecode(response.body);
    
//     for (var i = 0; i < data.length; i++) {
//       print('===============================================================');
//       print(
//         '${data[i]['title']}      ${data[i]['price']}        ${data[i]['stock']}  ');
//     }

// }


   Future<Map<dynamic, dynamic>> tarikdata() async {
      try {
        var response = await http.get(
         Uri.parse('https://dummyjson.com/products'),
        );
      
        var data = jsonDecode(response.body);

        return data;
      } catch (e) {
        print(e);
        return {};
      }
    }

    var hasil = await tarikdata();
    // print(hasil);

    for (var i = 0; i < hasil['products'].length; i++) {
      print('==============================================================='); 
      print('${hasil['products'][i]['title']}     ${hasil['products'][i]['price']}    ${hasil['products'][i]['stock']}');
    }

}  

