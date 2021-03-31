import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sinau/navigation.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData(canvasColor: Colors.transparent),
    home: Sinau(),
  ));
}


class Sinau extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(canvasColor: Colors.transparent),
      
       home: Scaffold(
         body: Stack(
         children: [
           Container(
             color: Color(0xFF6360FF),
           ),
           Positioned(
             left: -73,
             top: -46,
             child: Container(
               width: 888,
               height: 888,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(1000),
                 border: Border.all(width: 3, color: Color.fromRGBO(243, 243, 248, 0.3))
               ),
             ),
           ),
           Positioned(
             left: -173,
             top: 77,
             child: Container(
               width: 672,
               height: 672,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(1000),
                 border: Border.all(width: 3, color: Color.fromRGBO(243, 243, 248, 0.3))
               ),
             ),
           ),
           Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Container(
                 width: 59,
                 height: 59,
                 margin: EdgeInsets.only(top: 125.0),
                 decoration: BoxDecoration(
                   color: Color(0xFFFCFCFF),
                   borderRadius: BorderRadius.circular(15.6835)
                 ),
                 child: Container(
                   height: 32.96,
                   width: 32.96,
                   margin: EdgeInsets.all(13.04),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(100),
                     gradient: LinearGradient(
                       colors: <Color>[
                         Color(0xFF7C7AFC),
                         Color(0xFF5531E4)
                       ])
                   ),
                   child: Container(
                   margin: EdgeInsets.all(7),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.white
                   ),
                    child: Container(
                      margin: EdgeInsets.all(5),                    
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xFFFF8181),
                      ),
                    ),
                   ),
                 ),
               ),  
               _text(context),
               SizedBox(height: 99.0,),
               Container(
                 constraints: BoxConstraints(minHeight: 30, maxHeight: 43),        
                 decoration: BoxDecoration(                
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
                   color: Color(0xFFF1F1FA)
                 ),
                 
                 ),
               Expanded(child: Column
               (children: [
                 Container(
                   //height: 50.0,
                   padding: EdgeInsets.only(left: 25.0, right: 25.0, ),
                   color: Color(0xFFF1F1FA),
                   child: TextFormField(
                       decoration: InputDecoration(
                         contentPadding: EdgeInsets.only(top: 21.5, bottom:  17.5, left: 16),
                         prefixIcon: Icon(Icons.email_outlined, color: Color(0xFF6360FF), size: 18,),
                         hintText: "Email",                        
                         hintStyle: TextStyle(color: Color(0xFF91919F), fontSize: 14, fontFamily: "DMSans-Regular" ),
                         filled: true,
                         fillColor: Color(0xFFFCFCFF),
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10.0),
                           borderSide: BorderSide.none
                         )
                       ),
                     ),
                 ),
                 Container(
                   padding: EdgeInsets.only(top: 20, left: 25.0, right: 25.0, ),
                   color: Color(0xFFF1F1FA),
                   child: TextFormField(
                       decoration: InputDecoration(
                         contentPadding: EdgeInsets.only(top: 16, bottom:  16, left: 16),
                         prefixIcon: Icon(Icons.lock_outline_sharp, color: Color(0xFF6360FF), size: 18,),
                         filled: true,
                         hintText: "Password",                        
                         hintStyle: TextStyle(color: Color(0xFF91919F), fontSize: 14, fontFamily: "DMSans-Regular" ),
                         fillColor: Color(0xFFFCFCFF),
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10.0),
                           borderSide: BorderSide.none
                         )
                       ),
                     ),
                 ),
                 Expanded(
                   child: Container(
                     height: 240,
                     color: Color(0xFFF1F1FA),
                     child: SingleChildScrollView(
                       child: Column(
                         children: [
                           SizedBox(height: 20.0),
                           Center(
                             child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, new MaterialPageRoute(builder: (context) => new MyNavigationBar()));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 25, right: 25,),
                                  height: 48.0,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF6360FF),
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 14.0, ),
                                    child: Text("Sign In",  textAlign: TextAlign.center, style: TextStyle( fontSize: 18, fontStyle: FontStyle.normal, fontWeight: FontWeight.w700, fontFamily: "DMSans", color: Color(0xFFFCFCFF))),
                                  ),
                                ),
                             )
                           ),
                           SizedBox(height: 20),
                           Center(
                             child: GestureDetector(
                                onTap: (){},
                                child: Container(
                                  margin: EdgeInsets.only(left: 25, right: 25,),
                                  height: 48.0,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFF8181),
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 14.0, ),
                                    child: Text("Sign In With Google",  textAlign: TextAlign.center, style: TextStyle( fontSize: 18, fontStyle: FontStyle.normal, fontWeight: FontWeight.w700, fontFamily: "DMSans", color: Color(0xFFFCFCFF))),
                                  ),
                                ),
                             )
                           ),
                           SizedBox(height: 56),
                           Container(
                             child: Text("Feel free tro use this UI Kit",  textAlign: TextAlign.center, style: TextStyle( fontSize: 12, fontStyle: FontStyle.normal, fontWeight: FontWeight.w400, fontFamily: "DMSans-Regular", color: Color(0xFF91919F))),     
                           ),
                           Container(
                             child: Text("© Harum Shidiqi",  textAlign: TextAlign.center, style: TextStyle( fontSize: 12, fontStyle: FontStyle.normal, fontWeight: FontWeight.w400, fontFamily: "DMSans-Regular", color: Color(0xFF91919F))),     
                           )
                         ],
                       ),
                     )
                   ),
                 )
                    
               ]
               ),
               ),],
               
             ),
           )
           ],
        ),
       )
      
    );
  }

  _text(context){
    return Column(
      children: [ 
        Container(
        padding: EdgeInsets.only(top: 32.0),
        child: Image.asset('lib/text.png'),
      ),
      SizedBox(height: 17.0,),
      Container(
        child: Text("Learn from anything and anywhere", style: TextStyle(fontSize: 16,  fontFamily: "DMSans-Regular", color: Color(0xFFFCFCFF)),),
      ),
      
      
      ]);
  }
  
}









