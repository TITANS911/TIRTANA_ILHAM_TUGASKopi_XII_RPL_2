import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataOrderan extends StatefulWidget {
  const DataOrderan({super.key});

  @override
  State<DataOrderan> createState() => _DataOrderanState();
}

class _DataOrderanState extends State<DataOrderan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("ORDERAN TELAH BERHASIL"),
        ],
      ),
    );
  }
}
