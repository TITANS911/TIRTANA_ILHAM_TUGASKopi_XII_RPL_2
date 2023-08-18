import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'data_orederan.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class ListMenu extends StatefulWidget {
  const ListMenu({super.key});

  @override
  State<ListMenu> createState() => _ListMenuState();
}

class _ListMenuState extends State<ListMenu> {

  final List<String> items = [
    'Waffer Strawbarry',
    'Waffer Vanilla',
    'Waffer Coklat',
  ];
  String? selectedValue;

  bool satu = false;
  bool dua = false;
  bool tiga = false;
  bool empat = false;
  bool lima = false;

  String dropDownValue = "downdrop";

  // final _formKey = GlobalKey<FormState>();

  final catatan = TextEditingController();


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

          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              children: [
                Text('Topping'),
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
                        Text('Marsmellow'),
                       Checkbox(
                  checkColor: Colors.white,
                  value: satu,
                  onChanged: (bool? value) {
                    setState(() {
                      satu = value!;
                    });
                  },
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
                        Text('Waffer'),
                        Checkbox(
                          checkColor: Colors.white,
                          value: dua,
                          onChanged: (bool? value) {
                            setState(() {
                              dua = value!;
                            });
                          },
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
                        Text('Extra foam'),
                        Checkbox(
                          checkColor: Colors.white,
                          value: tiga,
                          onChanged: (bool? value) {
                            setState(() {
                              tiga = value!;
                            });
                          },
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
                        Text('Extra milk'),
                        Checkbox(
                          checkColor: Colors.white,
                          value: empat,
                          onChanged: (bool? value) {
                            setState(() {
                              empat = value!;
                            });
                          },
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
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        isExpanded: true,
                        hint: Text(
                          'Pilih Waffer',
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).hintColor,
                          ),
                        ),
                        items: items
                            .map((String item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                            .toList(),
                        value: selectedValue,
                        onChanged: (String? value) {
                          setState(() {
                            selectedValue = value;
                          });
                        },
                        buttonStyleData: const ButtonStyleData(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          height: 40,
                          width: 50,
                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          height: 40,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:  const EdgeInsets.only(top:10),
                  child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     TextFormField(
                       controller: catatan,
                       decoration: InputDecoration(
                         hintText: "Catatan",
                         labelText: "Catatan",
                       ),
                     )
                   ],
                  ),
                ),
                Container(
                  margin:  const EdgeInsets.only(top:20),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DataOrderan(),
                            ),
                          );
                        },

                        child:Text("ORDER"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
