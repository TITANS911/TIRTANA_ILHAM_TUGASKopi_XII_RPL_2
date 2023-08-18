import 'package:flutter/material.dart';

class CommonLayout extends StatelessWidget {
  const CommonLayout({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("LATIHAN 1"),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
          ),

          child: Row(

            children: [
              Column(

                children: [
                  Icon(Icons.call),
                  Container(
                    child: Text("CALL"),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(Icons.route),
                  Container(
                    child: Text("ROUTE"),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(Icons.share),
                  Container(
                    child: Text("SHARE"),
                  ),
                  Image.network('https://asset.kompas.com/crops/T3BK9gGBxjdwRBJzXv9xfeERI3c=/83x0:707x416/750x500/data/photo/2020/08/30/5f4b2fa3709bc.jpg',width: 100,height: 100,)
                ],
              )
            ],
          ),
        )
    );
  }
}
