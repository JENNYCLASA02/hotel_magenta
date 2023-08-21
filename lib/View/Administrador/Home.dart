import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_magenta/Model/Services.dart';
import 'package:hotel_magenta/Utils/ServicesItems.dart';
import 'package:image_picker/image_picker.dart';

import '../../Utils/ShowDialog.dart';
import '../../constants.dart';
import '../Residente/registerResidente.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  File ? imageFile;
  int currentCategory = 0;
  static const List<String> listVeh = <String>[
    'Ninguno',
    'Placa',
    'Nombre',
    'Apart',
    'Fecha',
    'Hora',
    'Estado'
  ];
  String listSelect = listVeh.first;

  Future _openCamera() async {
    var picture = await ImagePicker().pickImage(source: ImageSource.camera);
    /*setState(() {
      imageFile = picture as File; // Asignar la imagen capturada a imageFile
    });
    Navigator.of(context).pop();*/
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Text("Servicios",
                  style: TextStyle(color: Colors.black, fontSize: 18.sp)),
            ],
          ),
          SizedBox(
            height: 130,
            width: MediaQuery.of(context).size.width,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: services.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 1.2, mainAxisSpacing: 5),
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                  child: GestureDetector(
                    onTap: () {
                      setState(() async {
                        if (currentCategory == index) {
                          currentCategory = 10;
                        } else {
                          currentCategory = index;
                          if (currentCategory == 2){
                            await _openCamera();
                            showAlertDialog(context, Icons.add_task, "Felicitaciones",
                                "Acceso concendido", Colors.green, () {
                                  Navigator.pop(context);
                                });
                          }
                        }
                      });
                    },
                    child: ServicesItems(
                      selected: currentCategory == index,
                      services: services[index],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              Text("Vehiculos Registrados",
                  style: TextStyle(color: Colors.black, fontSize: 17.sp)),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Row(
                      children: [
                        Text('Ordernar por: ',
                            style: GoogleFonts.roboto(
                                fontSize: 15.sp,
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 5),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: listSelect,
                            icon: const Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: kPrimaryColor,
                            ),
                            style: const TextStyle(color: Colors.black),
                            onChanged: (String? value) {
                              setState(() {
                                if (value == listSelect[0]) {
                                  listSelect = value!;
                                } else {
                                  listSelect = value!;
                                }
                              });
                            },
                            items: listVeh
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                        dividerThickness: 2,
                        horizontalMargin: 10,
                        headingTextStyle: const TextStyle(color: Colors.white),
                        headingRowColor: MaterialStateProperty.resolveWith(
                            (states) => kPrimaryColor),
                        columns: const <DataColumn>[
                          DataColumn(
                            label: Text(
                              'Placa',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Nombre',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Apart',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Fecha',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Hora',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Estado',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                        ],
                        rows: const <DataRow>[
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('GTD 92E')),
                              DataCell(Text('Jenifer Clavijo')),
                              DataCell(Text('602D')),
                              DataCell(Text('01/05/23')),
                              DataCell(Text('8:45')),
                              DataCell(Text('A'))
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('GTD 92E')),
                              DataCell(Text('Jenifer Clavijo')),
                              DataCell(Text('602D')),
                              DataCell(Text('01/05/23')),
                              DataCell(Text('8:45')),
                              DataCell(Text('A'))
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('GTD 92E')),
                              DataCell(Text('Jenifer Clavijo')),
                              DataCell(Text('602D')),
                              DataCell(Text('01/05/23')),
                              DataCell(Text('8:45')),
                              DataCell(Text('A'))
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('GTD 92E')),
                              DataCell(Text('Jenifer Clavijo')),
                              DataCell(Text('602D')),
                              DataCell(Text('01/05/23')),
                              DataCell(Text('8:45')),
                              DataCell(Text('A'))
                            ],
                          ),
                        ]),
                  ),
                ),
                SizedBox(height: 5.h,),
                Row(
                  children: [
                    SizedBox(
                      height: 40.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(color: kPrimaryColor), // Borde con kPrimaryColor
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: kPrimaryColor,
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                textStyle: const TextStyle(fontSize: 15),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const RegisterResidente();
                                    },
                                  ),
                                );
                              },
                              child: const Text('Registrar',style: TextStyle(color: kPrimaryColor),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 40.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(color: kPrimaryColor), // Borde con kPrimaryColor
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: kPrimaryColor,
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                textStyle: const TextStyle(fontSize: 15),
                              ),
                              onPressed: () {},
                              child: const Text('Consultar',style: TextStyle(color: kPrimaryColor),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 40.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  border: Border.all(color: kPrimaryColor), // Borde con kPrimaryColor
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: kPrimaryColor,
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                textStyle: const TextStyle(fontSize: 15),
                              ),
                              onPressed: () {},
                              child: const Text('Modificar', style: TextStyle(color: kPrimaryColor),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

        ],
      ),
    ));
  }
}
