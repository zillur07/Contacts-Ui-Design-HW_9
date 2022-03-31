import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallList extends StatelessWidget {
  final cList = [
    {
      'name': 'Md. Zillur Rahman',
      'phone': '01856624090',
      'img': 'img/zillur.jpg',
      'color': Colors.grey,
    },
    {
      'name': 'Shah Rukh Khan',
      'phone': '01856242262',
      'img': 'img/saruk_khan.jpg',
      'color': Colors.green,
    },
    {
      'name': 'Shakira',
      'phone': '01966242262',
      'img': 'img/sakira.jpg',
      'color': Color.fromARGB(251, 241, 147, 4),
    },
    {
      'name': 'Imran Khan',
      'phone': '01756242262',
      'img': 'img/imran_khan.jpg',
      'color': Colors.green,
    },
    {
      'name': 'Bill Gates',
      'phone': '01856242262',
      'img': 'img/bill.jpg',
      'color': Colors.green,
    },
    {
      'name': 'Dilara Hanif Purnima',
      'phone': '01556242262',
      'img': 'img/purnima.jpg',
      'color': Colors.redAccent,
    },
    {
      'name': 'Mark Zuckerberg',
      'phone': '01656242262',
      'img': 'img/jukarbar.jpg',
      'color': Colors.green,
    },
    {
      'name': 'jennifer lopez',
      'phone': '01956982262',
      'img': 'img/janifa.jpg',
      'color': Color.fromARGB(251, 241, 147, 4),
    },
    {
      'name': 'Steve Jobs',
      'phone': '01856242762',
      'img': 'img/Sjobs.jpg',
      'color': Colors.green,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 230, 230),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.dehaze_outlined,
          color: Colors.grey,
        ),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 50,
            ),
            child: Text(
              'Contacts',
              style: TextStyle(color: Colors.black54),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search_rounded,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: Container(
        // Use ListView.builder
        child: ListView.builder(

            // the number of items in the list
            itemCount: cList.length,
            physics: BouncingScrollPhysics(),
            primary: false,
            shrinkWrap: true,

            // display each item of the product list
            itemBuilder: (context, index) {
              return Container(
                height: 90,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 13,
                    right: 13,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Card(
                      child: ListTile(
                        // leading: FlutterLogo(size: 56.0),
                        leading: SizedBox(
                          // height: 100.0,
                          // fixed width and height
                          // child: Image.asset('${cList[index]["img"]}'),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: CircleAvatar(
                              backgroundColor: Colors.red[200],
                              radius: 30,
                              child: Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage:
                                        AssetImage('${cList[index]["img"]}'),
                                  ),
                                  Positioned(
                                    child: CircleAvatar(
                                      radius: 6,
                                      backgroundColor:
                                          cList[index]['color'] as Color,
                                    ),
                                    bottom: 2,
                                    right: 0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        title: Text(
                          '${cList[index]["name"]}',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 32, 30, 30),
                          ),
                        ),
                        subtitle: Text(
                          '${cList[index]["phone"]}',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        trailing: Icon(
                          Icons.call,
                          color: Colors.red[300],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
