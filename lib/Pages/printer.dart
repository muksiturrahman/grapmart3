import 'package:flutter/material.dart';
// import 'package:dotted_border/dotted_border.dart';
class Printer extends StatefulWidget {
  const Printer({Key? key}) : super(key: key);

  @override
  State<Printer> createState() => _PrinterState();
}

class _PrinterState extends State<Printer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white,width: 3),
                  borderRadius: BorderRadius.circular(50)
              ),
              filled: true,
              fillColor: Colors.grey.shade200,
              contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18),
              hintText: "Search...",
              suffixIcon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      backgroundColor: Colors.orange,
      body: ListView(
        children: <Widget>[
          Padding(
            padding:  const EdgeInsets.all(10.0),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(

                )
                ),
              child: const Center(
                child: Text('Drag and drop some files here.'),
              ),
              ),
            ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: const [
                    Text('Print color'),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
