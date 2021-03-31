import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1FA),
      body: SingleChildScrollView(
        
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          color: Color(0xFF6360FF),
          child: Column(
            children: [
              SizedBox(height: 67.0,),
              Row(children: [
                Container(
                  margin: EdgeInsets.only(left: 10.0, bottom: 19.0),
                  child: IconButton(icon: SvgPicture.asset('lib/icons/left-arrow.svg', height: 11.67, color: Color(0xFFFCFCFF),), onPressed: (){Navigator.pop(context);}),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 26.0, bottom: 19.0),
                  child: Text("Explore", style: TextStyle(fontWeight: FontWeight.w400, fontFamily: "DMSans-Regular", fontSize: 14.0, color: Color(0xFFFCFCFF),)),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 230.0, bottom: 19.0),
                  child: IconButton(icon: SvgPicture.asset('lib/icons/shopping-cart.svg', height: 20, color: Color(0xFFFCFCFF),), onPressed: (){
                    
                  }),
                ),
              ],),
              Container(
                height: 900, 
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30), topLeft: Radius.circular(30)
                  ),
                  color: Color(0xFFF1F1FA)
                  
                ),
                child: Column(children: [
                  Container(
                   margin: EdgeInsets.only(top: 28, left: 25.0, right: 25.0, ),
                   color: Color(0xFFF1F1FA),
                   child: TextFormField(
                       decoration: InputDecoration(
                         contentPadding: EdgeInsets.only(top: 16, bottom:  16, left: 16),
                         filled: true,
                         suffixIcon: Icon(Icons.search, color: Color(0xFF161719),),
                         hintText: "Form placeholder",                        
                         hintStyle: TextStyle(color: Color(0xFF91919F), fontSize: 14, fontFamily: "DMSans-Regular", fontWeight: FontWeight.w400 ),
                         fillColor: Color(0xFFFCFCFF),
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10.0),
                           borderSide: BorderSide.none
                         )
                       ),
                     ),
                 ),
                 SizedBox(
                   height: 18.0,
                 ),
                 
                 Container(
                   width: double.infinity,
                        padding: EdgeInsets.only(left: 28.0, top: 20.0),
                        child: Text("Browser Category", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, fontFamily: "DMSans-Bold"),),
                  ),
                  SizedBox(height: 19.0,),
                  Container(
                    padding: EdgeInsets.only(left: 28.0),
                    height: 30,
                    child: _defaulTabController(context)
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    padding: EdgeInsets.only(left: 28.0),
                    height: 30,
                    child: _secondTabController()
                  ),
                  SizedBox(height: 20),
                  Container(
                   width: double.infinity,
                        padding: EdgeInsets.only(left: 28.0, top: 20.0),
                        child: Text("Recommended Courses", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, fontFamily: "DMSans-Bold"),),
                  ),
                  SizedBox(height: 10.0),
                  _recomendation(),
                  SizedBox(height: 15.0),
                  _recomendation(),
                  SizedBox(height: 15.0),
                  _recomendation()
                ],)),
            ],
          ),
        ),
      )
    );
  }
  
}

_defaulTabController(context){
  return ListView(
    scrollDirection: Axis.horizontal,
    children: [
      Container(
        height: 30,
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFF6360FF),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text("Technology",  style: TextStyle(fontWeight: FontWeight.w400, fontFamily: "DMSans-Regular", fontSize: 10, color: Color(0xFFFCFCFF)),)
      ),),
      SizedBox(width: 17,),
      Container(
        height: 30,
        width: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFF6360FF),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text("Business",  style: TextStyle(fontWeight: FontWeight.w400, fontFamily: "DMSans-Regular", fontSize: 10, color: Color(0xFFFCFCFF)),)
      ),),
      SizedBox(width: 17,),
      Container(
        height: 30,
        width: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFF6360FF),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text("Finance",  style: TextStyle(fontWeight: FontWeight.w400, fontFamily: "DMSans-Regular", fontSize: 10, color: Color(0xFFFCFCFF)),)
      ),),
      SizedBox(width: 17,),
      Container(
        height: 30,
        width: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFF6360FF),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text("Python",  style: TextStyle(fontWeight: FontWeight.w400, fontFamily: "DMSans-Regular", fontSize: 10, color: Color(0xFFFCFCFF)),)
      ),),
      SizedBox(width: 17,),
      Container(
        height: 30,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFF6360FF),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text("Go",  style: TextStyle(fontWeight: FontWeight.w400, fontFamily: "DMSans-Regular", fontSize: 10, color: Color(0xFFFCFCFF)),)
      ),)
    ],
  );
    
}

_secondTabController(){
  return ListView(
    scrollDirection: Axis.horizontal,
    children: [
      Container(
        height: 30,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFF6360FF),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text("Programming",  style: TextStyle(fontWeight: FontWeight.w400, fontFamily: "DMSans-Regular", fontSize: 10, color: Color(0xFFFCFCFF)),)
      ),),
      SizedBox(width: 17,),
      Container(
        height: 30,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFF6360FF),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text("Swift",  style: TextStyle(fontWeight: FontWeight.w400, fontFamily: "DMSans-Regular", fontSize: 10, color: Color(0xFFFCFCFF)),)
      ),),
      SizedBox(width: 17,),
      Container(
        height: 30,
        width: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFF6360FF),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text("React Native",  style: TextStyle(fontWeight: FontWeight.w400, fontFamily: "DMSans-Regular", fontSize: 10, color: Color(0xFFFCFCFF)),)
      ),),
    ],
  );
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

