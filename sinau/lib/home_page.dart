import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(canvasColor: Colors.transparent),
      home: Scaffold(
        backgroundColor: Color(0xFF6360FF),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 72,
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(left: 25 ),
                    child: Image.asset('lib/icons/eclipse.png',),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                       color: Colors.white,
                    ),

                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20 ),
                        child: Text("Welcome Back", style: TextStyle(color: Color(0xFFFCFCFF), fontSize: 10, fontFamily: "DMSans-Bold", fontStyle: FontStyle.normal, fontWeight: FontWeight.w700),),
                        
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20 ),
                        child: Text("Poetri Lazuadi", style: TextStyle(color: Color(0xFFFCFCFF), fontSize: 15, fontFamily: "DMSans-Bold", fontStyle: FontStyle.normal, fontWeight: FontWeight.w700),),
                       
                      ),
                    ],
                  ),
                  SizedBox(width: 190,),
                  Container(
                    padding: EdgeInsets.only(right: 25),
                    child: SvgPicture.asset('lib/icons/notification-bell.svg', color: Color(0xFFFCFCFF), height: 20.0,  ),
                  )
                ],
              ),
              SizedBox(height: 30.5,),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top:80),
                    padding: EdgeInsets.only(bottom: 80.0),
                    height: 900,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
                      color: Color(0xFFF1F1FA)
                    ),
                  ),
                  Positioned(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      _cartBalance(),
                      Container(
                        margin: EdgeInsets.only(left: 28.0, top: 20.0),
                        child: Text("Recomendation", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, fontFamily: "DMSans-Bold"),),
                  ),
                  SizedBox(height: 14.0,),
                  _recomendation(),
                  SizedBox(height: 14.0,),
                  _recomendation(),
                  SizedBox(height: 14.0,),
                  _recomendation(),
                    ],),
                  ),
                  
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }

  _cartBalance(){
    return Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFFCFCFF),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [ 
                    Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 15.0, top: 15.0),
                            child: Text("Declarative interfaces for any Apple ", style: TextStyle(fontWeight: FontWeight.w400, fontStyle: FontStyle.normal, color: Color(0xFF161719), fontSize: 12, fontFamily: "DMSans-Regular", ),),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 15.0, top: 4.0),
                            child: Text("Devices", style: TextStyle(fontWeight: FontWeight.w400, fontStyle: FontStyle.normal, color: Color(0xFF161719), fontSize: 12, fontFamily: "DMSans-Regular", ),),
                          ),
                          
                          Container(
                            padding: const EdgeInsets.only(top: 6.0, left: 15.0),
                            child: Text("IDR 850.000", style: TextStyle(fontWeight: FontWeight.w700, fontStyle: FontStyle.normal, color: Color(0xFF161719), fontSize: 12, fontFamily: "DMSans-Regular", ),),
                          )
                        ],
                      ),
                      Container(
                        height: 60.0,
                        width: 60.0,
                        margin: EdgeInsets.only(top: 15.0, left: 85, ),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color(0xFF6360FF),),
                        child: Transform.rotate(angle: 3.14 / 1.3,
                          child: Container(
                            margin: EdgeInsets.all(18),
                            color: Color.fromRGBO(255, 255, 255, 0.17)
                          ),
                        ),
                  )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15.0, top: 18.0),
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFF1F1FA)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('lib/icons/quality.svg', ),
                        )
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10, top: 20, bottom: 4),
                            child: Text("Current Progress", style: TextStyle(fontWeight: FontWeight.w400, fontStyle: FontStyle.normal, color: Color(0xFF91919F), fontSize: 10, fontFamily: "DMSans", ),),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10.0, ),
                            child: Text("50%", style: TextStyle(fontWeight: FontWeight.w400, fontStyle: FontStyle.normal, color: Color(0xFF161719), fontSize: 14, fontFamily: "DMSans", ),),
                          ),
                        ],
                      ),
                      SizedBox(width: 70,),
                      Container(
                        margin: EdgeInsets.only(left: 15.0, top: 18.0),
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFF1F1FA)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('lib/icons/quality.svg', ),
                        )
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10, top: 20, bottom: 4),
                            child: Text("Current Progress", style: TextStyle(fontWeight: FontWeight.w400, fontStyle: FontStyle.normal, color: Color(0xFF91919F), fontSize: 10, fontFamily: "DMSans", ),),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10.0, ),
                            child: Text("50%", style: TextStyle(fontWeight: FontWeight.w400, fontStyle: FontStyle.normal, color: Color(0xFF161719), fontSize: 14, fontFamily: "DMSans", ),),
                          ),
                        ],
                      ),
                      
                      
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 13.0, left: 15, right: 15),
                    width: double.infinity,
                        height: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xFFF1F1FA),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: 49,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Color(0xFF7DC579),
                              ),
                            )
                            ],
                          ),
                        )
                  ],),
              );
  }
}




_recomendation(){
    return Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                height: 105,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFFCFCFF),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [ 
                    Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 15.0, top: 15.0),
                            child: Text("Declarative interfaces for any Apple ", style: TextStyle(fontWeight: FontWeight.w400, fontStyle: FontStyle.normal, color: Color(0xFF161719), fontSize: 12, fontFamily: "DMSans-Regular", ),),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 15.0, top: 4.0),
                            child: Text("Devices", style: TextStyle(fontWeight: FontWeight.w400, fontStyle: FontStyle.normal, color: Color(0xFF161719), fontSize: 12, fontFamily: "DMSans-Regular", ),),
                          ),
                          
                          Container(
                            padding: const EdgeInsets.only(top: 6.0, left: 15.0),
                            child: Text("IDR 850.000", style: TextStyle(fontWeight: FontWeight.w700, fontStyle: FontStyle.normal, color: Color(0xFF161719), fontSize: 12, fontFamily: "DMSans-Regular", ),),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                                child: SvgPicture.asset('lib/icons/star.svg', height: 10.83,)),
                              Container(
                                padding: const EdgeInsets.only(top: 9.0, left: 6.0),
                                child: Text("4.5", style: TextStyle(color: Color(0xFF161719), fontSize: 10.83, fontWeight: FontWeight.w700, fontFamily: "DMSans"),)),
                                 Container(
                                padding: const EdgeInsets.only(top: 9.0, left: 6.0),
                                child: Text(" · By Sarah William · All Level", style: TextStyle(fontSize: 10.83, fontWeight: FontWeight.w400, fontFamily: "DMSans-Bold", color: Color(0xFF91919F)),))
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 75.0,
                        width: 75.0,
                        margin: EdgeInsets.only(top: 15.0, left:70),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color(0xFFFF8181),),
                        child: Container(
                          margin: EdgeInsets.all(23),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(255, 255, 255, 0.17))
                        ),
                  )
                    ],
                  ),
                
                  ],),
              );
  }

