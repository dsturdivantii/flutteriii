import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Doug Sturdivant
// Flutter II recreate navigation example combine MaterialPageRoute & NamedRoute

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => FirstPage(),
        '/secondPage': (context)=> SecondPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() =>_FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center (child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("First Page"),
          SizedBox(height:10),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondPage');
              },
              child: Text('Go to Second Page'),
              style: ButtonStyle (
                elevation: MaterialStateProperty.all(1),
              )
          )
      ]
          
    ))
        );}
    


    }
    
  class SecondPage extends StatefulWidget {

  
    @override
    _SecondpageState createState() => _SecondpageState();
  }
  
  class _SecondpageState extends State<SecondPage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: Center (child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("First Page"),
                SizedBox(height:10),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Text('Go to Second Page'),
                    style: ButtonStyle (
                      elevation: MaterialStateProperty.all(1),
                    )
                )
              ]

          ))
      );

    }
  }
  
