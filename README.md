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




  <img height="https://github.com/ronnie9901/resumeapp_dailytask/assets/148763509/511b79fc-23d0-4c97-a203-80393c9c4a76"  />

  <img height="https://github.com/ronnie9901/resumeapp_dailytask/assets/148763509/678aecdd-5d17-4e94-9dc9-b3b51b156191"  />


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
