import 'package:flutter/material.dart';

class Tasbih_Page extends StatelessWidget {

static const String Route_name='sebha';
  @override
  Widget build(BuildContext context) {
return Stack(
children: [
  Image.asset('Assits/images/bg3.png',width: double.infinity,
  height: double.infinity,
  fit: BoxFit.fill,),

Scaffold(

appBar: AppBar(
  elevation: 0,
  centerTitle: true,
  backgroundColor: Colors.transparent,
title: Text('Islami',style:TextStyle(color:Colors.black ),),
),
  backgroundColor: Colors.transparent,
  bottomNavigationBar:Theme(
    data: Theme.of(context)
        .copyWith(canvasColor:Color.fromRGBO(183, 147, 95, 1.0)),
    child:BottomNavigationBar(
    backgroundColor:Color.fromRGBO(183, 147, 95, 1.0),
    items: [
      BottomNavigationBarItem(
          label:'',
          icon:Image.asset('Assits/images/radio.png')),
      BottomNavigationBarItem(
          label:'',
          icon:Image.asset('Assits/images/quran.png')),
      BottomNavigationBarItem(
          label:'',
          icon:Image.asset('Assits/images/sebha.png')),
      BottomNavigationBarItem(
          label:'',
          icon:Image.asset('Assits/images/quran-quran-svgrepo-com.png')),
    ],
  ),
)
),
],
);
  }
}
