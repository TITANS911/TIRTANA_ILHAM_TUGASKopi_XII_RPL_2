import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'list_menu.dart';

class MenuList extends StatefulWidget {
  const MenuList({super.key});

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.list,
            color: Colors.brown,
          ),
        ),
        body: SingleChildScrollView(
          padding: new EdgeInsets.symmetric(horizontal: 20.0),
          child: Padding(
            padding: const EdgeInsets.all(50),

            child: Column(
              children: [
                Text('List Menu'),
                SizedBox(height: 20),
                Container(
                  margin:  const EdgeInsets.only(top:10),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5),border: Border.all(color: Color(0xff263238), width: 0.1),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top:20, left: 20, bottom: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/coffee2.jpg'),

                        Text('Long Black'),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ListMenu(),
                                ),
                              );
                            },
                            child:Icon(Icons.arrow_right),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin:  const EdgeInsets.only(top:10),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5),border: Border.all(color: Color(0xff263238), width: 0.1),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top:20, left: 20, bottom: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/coffee1.jpg'),
                        Text('Latte'),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ListMenu(),
                              ),
                            );
                          },
                          child:Icon(Icons.arrow_right),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin:  const EdgeInsets.only(top:10),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5),border: Border.all(color: Color(0xff263238), width: 0.1),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top:20, left: 20, bottom: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/coffee3.jpg'),
                        Text('Espresso'),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ListMenu(),
                              ),
                            );
                          },
                          child:Icon(Icons.arrow_right),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin:  const EdgeInsets.only(top:10),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5),border: Border.all(color: Color(0xff263238), width: 0.1),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top:20, left: 20, bottom: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/coffee4.jpg', height: 50,),
                        Text('Ice coffee'),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ListMenu(),
                              ),
                            );
                          },
                          child:Icon(Icons.arrow_right),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
