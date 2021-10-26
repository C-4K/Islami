import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:prctic3/Hadith_Page.dart';
import 'package:prctic3/Sebha.dart';
import 'package:prctic3/main.dart';

class Tasbih_Page extends StatefulWidget {
  static const String Route_name = 'sebha';

  @override
  _Tasbih_PageState createState() => _Tasbih_PageState();
}

class _Tasbih_PageState extends State<Tasbih_Page> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'Assits/images/bg3.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
            appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              backgroundColor: Colors.transparent,
              title: Text(
                'Islami',
                style: TextStyle(color:MyThemeData.colorBlack),
              ),
            ),
            backgroundColor: Colors.transparent,
            bottomNavigationBar: Theme(
              data: Theme.of(context)
                  .copyWith(canvasColor: MyThemeData.primaryColor),
              child: BottomNavigationBar(
                onTap: (index) {
                  currentPage = index;
                  setState(() {});
                },
                currentIndex: currentPage,
                selectedItemColor: MyThemeData.selectedIconColor,
                unselectedItemColor: MyThemeData.unSelectedIconColor,
                backgroundColor: MyThemeData.primaryColor,
                items: [
                  BottomNavigationBarItem(
                      label: 'Radio', icon: Image.asset('Assits/images/radio.png')),
                  BottomNavigationBarItem(
                      label: 'Quran', icon: Image.asset('Assits/images/quran.png')),
                  BottomNavigationBarItem(
                      label: 'sebha', icon: Image.asset('Assits/images/sebha_gold.png')),
                  BottomNavigationBarItem(
                      label: 'Hadith',
                      icon: Image.asset(
                          'Assits/images/quran-quran-svgrepo-com.png')),
                ],
              ),
            ),
          body: Container(child: getCurrentPage()),
        ),
      ],
    );
  }
   Widget getCurrentPage(){
     if (currentPage == 2) {
       return Sebha();
     } else
       return Hadithe_page();  }
}
