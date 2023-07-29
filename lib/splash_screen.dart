
import 'package:flutter/material.dart';
import 'package:flutter_3_splash_screen/main.dart';
import 'package:flutter_3_splash_screen/home.dart';

class Splash extends StatefulWidget{
  const Splash ({Key? key}) : super(key:key);

  @override
  _SplashState createState() => _SplashState();

}
class _SplashState extends State<Splash>{
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async{
    await Future.delayed(Duration(milliseconds: 1500),() {});
    Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context) => MyHomePage(title:'gfg',)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            'Splash Screen ',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

