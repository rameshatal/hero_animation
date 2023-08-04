import 'package:flutter/material.dart';
import 'package:hero_animation/detail.dart';

void main(){
  runApp(const MyApp());

}
class MyApp extends StatelessWidget{
  const MyApp({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Damo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget{
  const HomePage({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: Container(
        child: Center(
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(),));
            },
            child: Hero(
              tag: 'background',
              child: Image.asset("assets/images/images (31).jpg",width: 150,
              height: 100,),
            ),
          ),
        ),
      ),
    );
  }
}
