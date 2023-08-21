import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../Model/Services.dart';
import '../../Utils/ServicesItems.dart';
import '../../Utils/ShowDialog.dart';
import '../../constants.dart';

class HomeVigilante extends StatefulWidget {
  const HomeVigilante({Key? key}) : super(key: key);

  @override
  State<HomeVigilante> createState() => _HomeVigilanteState();
}

class _HomeVigilanteState extends State<HomeVigilante> {
  //File? imageFile;

  Future _openCamera() async {
    var picture = await ImagePicker().pickImage(source: ImageSource.camera);
    /*setState(() {
      imageFile = picture as File; // Asignar la imagen capturada a imageFile
    });*/
    //Navigator.of(context).pop();
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
              itemCount: 1,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 1.2, mainAxisSpacing: 5),
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                  child: GestureDetector(
                    onTap: () async{
                      await _openCamera();
                      showAlertDialog(context, Icons.add_task, "Felicitaciones",
                          "Acceso concendido", Colors.green, () {
                            Navigator.pop(context);
                          });
                    },
                    child: ServicesItems(
                      selected: true,
                      services: services[2],
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
                SizedBox(
                  height: 5.h,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
