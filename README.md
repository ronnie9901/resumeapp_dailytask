# resumeapp_dailytask

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.




<div align="center">
  <img align="left" height= "550" src="https://github.com/ronnie9901/resumeapp_dailytask/assets/148763509/38c08a08-27b8-4c0a-ae7e-af56f607b962"  />
  
  <img height= "550" src="https://github.com/ronnie9901/resumeapp_dailytask/assets/148763509/b65df072-8841-47a7-b2d2-dc0b9f91d73c"  />
  <img align="right" height= "550" src="https://github.com/ronnie9901/resumeapp_dailytask/assets/148763509/f95b2b56-77aa-494d-ad43-9116ee079df0"  />
  </div>


# AppBar Both
```dart
 return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.green),
      ),
    );
```

 # Globle
 ```
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.green,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:StatusBar(),
    );
  }
}
```
    


<h1> List of Map <h1>
 <h1>What is List and Map?</h1>
 List :  The list is an ordered collection of objects and the List can contain duplicate values.

<h1>Predefined functions of list</h1>

1.add() 2.addAll() 3.insert() 4.insertAll()
5.remove() 6.removeAt() 7.removeLast() 8.removeRange()

Example :
    
    
    List product = ['product1', 'product2', 'product3', 'product4'];
    Map :  A Map is an object that maps keys to values or is a collection of attribute-value pairs.
<h1>Predefined functions of map</h1>
1.addAll() 2.remove() 3.forEach() 4.update()

Example :
```b
Map userdetails = {'Usrname':'rohan','Password':'ro@123'};

```

Generics :
Generics in Dart provide a way to write reusable code that can work with different types. They allow you to define classes, functions, and interfaces that can operate on a variety of data typ
