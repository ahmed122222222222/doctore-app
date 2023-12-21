import 'dart:convert';

class acc{
  String Name,email,phone;
  acc({required this.email,required this.Name,required this.phone});
 factory acc.fromjason(jasondata)
 {

   return  acc(Name:jasondata["name"],email: jsonDecode("email"),phone: jsonDecode("phone"));
 }
}