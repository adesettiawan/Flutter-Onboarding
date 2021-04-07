import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onboarding/model/listview_model.dart';
import 'package:onboarding/ui/drawer_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Color(0xff3CB371),
      ),
      drawer: DrawerScreeen(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 5,
            ),
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listModel.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Material(
                    elevation: 1,
                    shadowColor: Color(0xff3CB371),
                    borderRadius: BorderRadius.circular(20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.grey[200],
                        width: 300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: SvgPicture.asset(
                                listModel[index].imageAsset,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: RichText(
                                text: TextSpan(
                                    text: listModel[index].title + '\n',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: listModel[index].desc,
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 20, 0, 0),
                    child: Text(
                      'More Info',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
                    width: 100,
                    height: 2,
                    color: Colors.green,
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(6, 20, 8, 3),
            child: Card(
              shadowColor: Color(0xff3CB371),
              elevation: 1,
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Data Covid 19',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 18,
                      color: Color(0xff3CB371),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(6, 0, 8, 3),
            child: Card(
              shadowColor: Colors.green,
              elevation: 1,
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cek Kesehatan',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 18,
                      color: Color(0xff3CB371),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(6, 0, 8, 3),
            child: Card(
              shadowColor: Colors.green,
              elevation: 1,
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Gejala Terinfeksi',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 18,
                      color: Color(0xff3CB371),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(6, 0, 8, 3),
            child: Card(
              shadowColor: Colors.green,
              elevation: 1,
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cegah Penularan',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 18,
                      color: Color(0xff3CB371),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
