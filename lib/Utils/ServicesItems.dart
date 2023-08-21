import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_magenta/Model/Services.dart';
import 'package:hotel_magenta/constants.dart';

class ServicesItems extends StatelessWidget {
  final bool selected;
  final Services services;

  const ServicesItems({Key? key, required this.selected, required this.services})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 250),
      height: 105,
      width: 78,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: selected
              ? Border.all(width: 2, color: kPrimaryColor)
              : Border.all(color: Colors.white),
        boxShadow: const [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              offset: Offset(2, 3))
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              const SizedBox(height: 10),
              Container(
                height: 30,
                width: 46,
                decoration:
                    const BoxDecoration(shape: BoxShape.circle),
              ),
              Image.asset(
                services.image,
                width: 46,
                fit: BoxFit.contain,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            services.description,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(fontSize: 12.sp, color: Colors.black),
          )
        ],
      ),
    );
  }
}
