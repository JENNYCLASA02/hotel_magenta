import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_magenta/Utils/ButtonLogin.dart';
import 'package:hotel_magenta/constants.dart';

class RegisterResidente extends StatefulWidget {
  const RegisterResidente({Key? key}) : super(key: key);

  @override
  State<RegisterResidente> createState() => _RegisterResidenteState();
}

class _RegisterResidenteState extends State<RegisterResidente> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController userController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: kPrimaryColor,
          ),
        ),
        centerTitle: true,
        title: Image.asset("assets/magenta2.png", width: 40.w, height: 40.h),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Center(
                  child: Text(
                    "REGISTRO DE VEHICULOS",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp),
                  ),
                ),
                SizedBox(height: 20.h,),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: userController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: Colors.orange),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: const Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                    labelText: "Nombre",
                    labelStyle: TextStyle(
                        fontSize: 15.sp,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w300),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Porfavor digitar todos los datos';
                    }
                    return null;
                  },
                  onSaved: (value) => userController =
                  value?.replaceAll(' ', '') as TextEditingController,
                ),
                SizedBox(height: 15.h,),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: userController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: Colors.orange),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: const Icon(
                      Icons.person_outline_rounded,
                      color: kPrimaryColor,
                    ),
                    labelText: "Apellido",
                    labelStyle: TextStyle(
                        fontSize: 15.sp,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w300),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Porfavor digitar todos los datos';
                    }
                    return null;
                  },
                  onSaved: (value) => userController =
                  value?.replaceAll(' ', '') as TextEditingController,
                ),
                SizedBox(height: 15.h,),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: userController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: Colors.orange),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: const Icon(
                      Icons.holiday_village,
                      color: kPrimaryColor,
                    ),
                    labelText: "Apartamento",
                    labelStyle: TextStyle(
                        fontSize: 15.sp,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w300),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Porfavor digitar todos los datos';
                    }
                    return null;
                  },
                  onSaved: (value) => userController =
                  value?.replaceAll(' ', '') as TextEditingController,
                ),
                SizedBox(height: 15.h,),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: userController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: Colors.orange),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: const Icon(
                      Icons.car_crash_outlined,
                      color: kPrimaryColor,
                    ),
                    labelText: "Placa",
                    labelStyle: TextStyle(
                        fontSize: 15.sp,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w300),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Porfavor digitar todos los datos';
                    }
                    return null;
                  },
                  onSaved: (value) => userController =
                  value?.replaceAll(' ', '') as TextEditingController,
                ),
                SizedBox(height: 15.h,),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: userController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: Colors.orange),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: const Icon(
                      Icons.model_training,
                      color: kPrimaryColor,
                    ),
                    labelText: "Modelo",
                    labelStyle: TextStyle(
                        fontSize: 15.sp,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w300),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Porfavor digitar todos los datos';
                    }
                    return null;
                  },
                  onSaved: (value) => userController =
                  value?.replaceAll(' ', '') as TextEditingController,
                ),
                SizedBox(height: 15.h,),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: userController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: Colors.orange),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: const Icon(
                      Icons.circle_outlined,
                      color: kPrimaryColor,
                    ),
                    labelText: "Color",
                    labelStyle: TextStyle(
                        fontSize: 15.sp,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w300),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Porfavor digitar todos los datos';
                    }
                    return null;
                  },
                  onSaved: (value) => userController =
                  value?.replaceAll(' ', '') as TextEditingController,
                ),
                SizedBox(height: 20.h,),

                ButtonLogin(press: (){}, title: "Registrar")

              ],
            ),
          ),
        ),
      ),
    );
  }
}
