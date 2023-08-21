import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_magenta/Model/Services.dart';
import 'package:hotel_magenta/View/Residente/registerResidente.dart';

import '../../Utils/ServicesItems.dart';
import '../../constants.dart';

class HomeResidente extends StatefulWidget {
  const HomeResidente({Key? key}) : super(key: key);

  @override
  State<HomeResidente> createState() => _HomeResidenteState();
}

class _HomeResidenteState extends State<HomeResidente> {

  int currentCategory = 0;

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
              height: 120.h,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: servicesResidente.length,
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
                          }
                        });
                      },
                      child: ServicesItems(
                        selected: currentCategory == index,
                        services: servicesResidente[index],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 30.h,),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Tus Vehiculos", style: TextStyle(color: Colors.black, fontSize: 18.sp)),
                    ],
                  ),
                  SizedBox(height: 10.h,),
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
                                DataCell(Text('KTM 948')),
                                DataCell(Text('Alvaro F')),
                                DataCell(Text('602D')),
                                DataCell(Text('01/05/23')),
                                DataCell(Text('8:45')),
                                DataCell(Text('A'))
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('PWD 041')),
                                DataCell(Text('Alvaro F')),
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
      ),
    );
  }
}
