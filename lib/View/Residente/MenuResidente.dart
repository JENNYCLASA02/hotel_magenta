import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hotel_magenta/View/Residente/HomeResidente.dart';
import 'package:line_icons/line_icons.dart';

import '../../constants.dart';
import '../Administrador/Profile.dart';

class MenuResidente extends StatefulWidget {
  const MenuResidente({Key? key}) : super(key: key);

  @override
  State<MenuResidente> createState() => _MenuResidenteState();
}

class _MenuResidenteState extends State<MenuResidente> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    Widget body() {
      switch (currentIndex) {
        case 0:
          return const HomeResidente();

        case 1:
          return const ProfileScreen();

        default:
          return Center(
            child: Text(
              'Hubo un error',
              style: GoogleFonts.roboto(),
            ),
          );
      }
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){},
            child: Image.asset("assets/ordenar.png", width: 20.w, height: 20.h, color: kPrimaryColor,),
          ),
        ),
        centerTitle: true,
        title: Image.asset("assets/magenta2.png", width: 40.w,height: 40.h),
      ),
      backgroundColor: Colors.white,
      body: body(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GNav(
          tabBorderRadius: 30,
          hoverColor: Colors.black54,
          haptic: true,
          color: kPrimaryColor,
          gap: 8,
          curve: Curves.bounceIn,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          iconSize: 23,
          tabs: const [
            GButton(
              icon: LineIcons.home,
              text: "Inicio",
              backgroundColor: kPrimaryColor,
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
            GButton(
              icon: Icons.person_outline_rounded,
              text: "Perfil",
              backgroundColor: kPrimaryColor,
              iconActiveColor: Colors.white,
              textColor: Colors.white,
              leading: CircleAvatar(
                radius: 12,
                backgroundImage: AssetImage("assets/residente.jpg"),
              ),
            ),
          ],
          //selectedIndex: currentIndex,
          onTabChange: (index) {
            setState((){
              currentIndex = index;
            });
            //controller.jumpToPage(index);
          },
        ),
      ),
    );
  }
}
