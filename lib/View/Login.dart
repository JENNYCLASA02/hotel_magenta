import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_magenta/View/Administrador/Menu.dart';
import 'package:hotel_magenta/View/Residente/MenuResidente.dart';
import 'package:hotel_magenta/View/Vigilante/MenuVigilante.dart';

import '../Utils/ButtonLogin.dart';
import '../constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _obscureText = false;
  String dropdownValue = 'Administrador';
  @override
  void initState() {
    _obscureText = true;
  }

  final _formKey = GlobalKey<FormState>();
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 120.h,
                ),
                const Text("HOTEL MAGENTA", style: TextStyle(color: kPrimaryColor, fontSize: 15),),
                SizedBox(height: 10.h,),
                Image.asset(
                  "assets/magenta2.png",
                  height: 150.h,
                ),
                SizedBox(
                  height: 60.h,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    controller: userController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                        const BorderSide(width: 1, color: Colors.orange),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(width: 1, color: kPrimaryColor),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(width: 1, color: kPrimaryColor),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(width: 1, color: kPrimaryColor),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: kPrimaryColor,
                      ),
                      labelText: "Usuario",
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
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: TextFormField(
                    controller: passController,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Colors.orange),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: kPrimaryColor),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: kPrimaryColor),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: kPrimaryColor),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: kPrimaryColor,
                        ),
                        suffixIcon: _obscureText == true
                            ? IconButton(
                          icon: const Icon(Icons.visibility),
                          color: kPrimaryColor,
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        )
                            : IconButton(
                          icon: const Icon(Icons.visibility_off),
                          color: kPrimaryColor,
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                        labelText: "Contraseña",
                        labelStyle: TextStyle(
                            fontSize: 15.sp,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w300)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Porfavor digitar todos los datos';
                      }
                      return null;
                    },
                    onSaved: (value) => passController =
                    value?.replaceAll(' ', '') as TextEditingController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Container(
                    width: double.infinity,
                    height: 53.h,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(width: 1, color: kPrimaryColor),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_downward, color: kPrimaryColor), // Icono a la derecha
                        elevation: 16,
                        style: const TextStyle(color: kPrimaryColor),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>[
                          'Administrador',
                          'Vigilante',
                          'Residente',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                ButtonLogin(
                    press: () {
                      if (_formKey.currentState!.validate()) {
                        if(dropdownValue == 'Administrador'){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const MenuScreen();
                              },
                            ),
                          );
                        } else if(dropdownValue == 'Vigilante'){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const MenuVigilante();
                              },
                            ),
                          );
                        }else{
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const MenuResidente();
                              },
                            ),
                          );
                        }
                      }
                    },
                    title: "Ingresar"),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
