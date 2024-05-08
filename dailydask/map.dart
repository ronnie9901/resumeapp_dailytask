import 'dart:io';   

void main()
{    
    Map person=
   {
    "name": Null,
    "age": Null,
    "gender": Null,
    "city": Null,
    "state": Null,
    "country": Null,
    "email": Null,
    "phone": Null,
    "address": Null,
    "Education": Null,
   };
   
   for(String key in person.keys)
   {
    stdout.write("enter the keys ");
    person[key]=stdin.readLineSync();
   }
   print("");
   for(String key in person.keys)
   {
    stdout.write("$key is ${person[key]} ");
   }
   

}