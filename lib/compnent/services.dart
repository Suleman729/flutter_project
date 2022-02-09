// ignore_for_file: avoid_print

import 'dart:convert';



import 'package:fixhome2/Models/models.dart';
import 'package:http/http.dart' as http;
  String url = "http://www.bcsportal.com.pk/test/service.php";
 String url1 = "http://www.bcsportal.com.pk/test/provider.php";
getUser() async{
  var response = await http.get(Uri.parse(url));
  var resbody = json.decode(response.body);
  List <userModel> userlist= [];
  for(var i in resbody){
    userModel users = userModel(Id: i["Id"], image:i ["image"], name: i["name"]);
    userlist.add(users);
  }
  return userlist;
  
}

getProvider() async{
  var response = await http.get(Uri.parse(url1));
  var resbody = json.decode(response.body);
  List <providerModel> prolist= [];
  for(var i in resbody){
    providerModel users = providerModel(id: i["id"], profile:i ["profile"], name: i["name"],cnic: i["cnic"],pass: i["pass"], contact:i ["contact"], service: i["service"],location: i["location"],email: i["email"]);
    prolist.add(users);
  }
  return prolist;
  
}

