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
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: Container( //Exercício Alura
      //   color: Colors.black,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Container(color: Colors.red, height: 100, width: 100,),
      //           Container(color: Colors.orange, height: 100, width: 100,),
      //           Container(color: Colors.yellow, height: 100, width: 100,)
      //         ],
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Container(color: Colors.green, height: 100, width: 100,),
      //           Container(color: Colors.cyan, height: 100, width: 100,),
      //           Container(color: Colors.blue, height: 100, width: 100,)
      //         ],
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Container(color: Colors.purple, height: 100, width: 100,),
      //           Container(color: Colors.pinkAccent, height: 100, width: 100,),
      //           Container(color: Colors.white, height: 100, width: 100,)
      //         ],
      //       )
      //     ],
      //   ),
      // ),
      home: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(color: Colors.red, width: 100, height: 100,),
                  Container(color: Colors.blue, width: 50, height: 50,)
                ],
              ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(color: Colors.red, width: 100, height: 100,),
                Container(color: Colors.blue, width: 50, height: 50,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(color: Colors.cyan, height: 50, width: 50),
                Container(color: Colors.pinkAccent, height: 50, width: 50),
                Container(color: Colors.purple, height: 50, width: 50)
              ],
            ),
            Container(
              color: Colors.amber,
              height: 30,
              width: 300,
              child: Text(
                'Diamante amarelo',
                style: TextStyle(color: Colors.black, fontSize: 28),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  print('Você apertou o botão');
                },
                child: Text('Aperte o botão')
            )
          ],
        ),
      )
    );
  }
}


