import 'package:flutter/material.dart';
import 'package:kkkk/menu_list.dart';

import 'list_menu.dart';

class LatihanLayout extends StatelessWidget {
  const LatihanLayout ({super.key});

  @override
  Widget build(BuildContext context) {
    var titleSection;
    return Scaffold(
            body: Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                    children: [
                      Image.network('https://png.pngtree.com/template/20190323/ourmid/pngtree-coffee-logo-design-image_82183.jpg',width: 300,)
                    ],
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    titleSection = Container(
                      margin: EdgeInsets.all(10),
                       child: Row(
                         children: [
                           Expanded(
                               child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Container(
                                     padding: const EdgeInsets.only(bottom: 8),
                                     child: const Text(
                                       'Brew Day',
                                       style: TextStyle(
                                         fontSize: 40,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ),
                                   ),
                                   Text(
                                     'How do you like your coffee?',
                                     style: TextStyle(
                                       color: Colors.grey[500],
                                     ),
                                   ),
                                 ],
                           ),
                           ),
                         ],
                       ),
                    )
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MenuList(),
                            ),
                          );
                        },
                        child:Text("List Menu Coffee")),

                  ],
                )
              ],
        ),
    ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
