import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

 class MyApp extends StatelessWidget {
   const MyApp({super.key});

  // This widget is the root of your application.
  @override
   Widget build(BuildContext context) {
     return MaterialApp(
//       title: 'Flutter Demo',
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white10),
//          useMaterial3: true, // Optional for modern look
      ),
       home: const MyHomePage(title: ''),
);
   }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),
    //image work
    // body:  Center(
    // child: Container(
    // width: 100,
    // height: 100,
    // color: Colors.yellow,
    // child: Image.asset('assets/images/flutter.png')
    // ),
    // ),
      //stack work
     body:Stack(
       children: [
         Container(
           width: 500, // Increased width
           height: 200,
           color: Colors.pinkAccent ,
         ),
    Positioned(
    top: 50,
    left: 20,
    child: Container(
    width: 100,
    height: 100,
    color: Colors.purpleAccent,
    alignment: Alignment.center,
    child: Text(
    'This is my Beautiful App',
    textAlign: TextAlign.center,
    style: TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    ),
    ),
    ),
    ),
    Positioned(
    top: 50,
    left: 130,
    child: Container(
    width: 260,
    height: 100,
    color: Colors.orangeAccent,
    child: Image.asset(
    'assets/images/flutter.png',
    fit: BoxFit.cover,
    ),
    ),
    ),
       ],
     )

    ) ;

  }

}



