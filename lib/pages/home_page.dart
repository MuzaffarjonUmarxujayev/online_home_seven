import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const id = "/sokin_tun";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/im_party1.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
        child: Container(
          padding: EdgeInsets.only(top: 100,left: 30,right: 30,bottom: 40),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.1),
              ]
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Find the best parties near you",style: TextStyle(color: Colors.yellow,fontSize: 40,fontWeight: FontWeight.bold),),
              SizedBox(height: 50,),
              Container(padding: EdgeInsets.only(bottom: 350),
                  child: Text("Let us find you a tutorial for your interest",style: TextStyle(color: Colors.green[300],fontSize: 25,fontWeight: FontWeight.w100),)),
              SizedBox(height: 100,),
              _isLogin ?
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 40,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                  color: Colors.yellow[700],
                ),
                child: Center(child: Text("Start",style: TextStyle(color: Colors.white,fontSize: 18),)),
              ):
              Row(
                children: [
                  Expanded(
                     child: Container(
                      height: 50,
                      // width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red,
                      ),
                      child: Center(child: Text("Google+",style: TextStyle(color: Colors.white,fontSize: 18),)),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue,
                      ),
                      child: Center(child: Text("Facebook",style: TextStyle(color: Colors.white,fontSize: 18),)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
