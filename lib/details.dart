import 'package:animals/global.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Details extends StatefulWidget {
  String name;

  Details({super.key, required this.name});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) => (widget.name == list[index]['Name'])
              ? Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 246,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                list[index]['Image'],
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        list[index]['Name'],
                        style:
                            const TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        height: 490,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: AutoSizeText(
                            list[index]['Detail'],
                            minFontSize: 20,
                            maxFontSize: 50,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Container(),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
