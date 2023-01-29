import 'package:flutter/material.dart';
import 'package:grapmart3/Pages/Beauty_&_Personal_Care.dart';
import 'package:grapmart3/Pages/Books_&_Stationery.dart';
import 'package:grapmart3/Pages/Everyday%20Needs.dart';
import 'package:grapmart3/Pages/Fashion%20&%20Lifestyle.dart';
import 'package:grapmart3/Pages/Gadget%20&%20Electronics.dart';
import 'package:grapmart3/Pages/GrapFood.dart';
import 'package:grapmart3/Pages/Home%20&%20Gardening.dart';
import 'package:grapmart3/Pages/Snacks.dart';
import 'package:grapmart3/Pages/Winter%20Collection.dart';

class Deshboard extends StatefulWidget {
  const Deshboard({Key? key}) : super(key: key);

  @override
  State<Deshboard> createState() => _DeshboardState();
}

class _DeshboardState extends State<Deshboard> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          const Text(
            '   All Category',
            style: TextStyle(fontSize: 20),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Beauty And Personal care',
              style:
                  TextStyle(color: Colors.black54),
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => const Beauty())),
                );
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Books & Stationery',
              style:
                  TextStyle(color: Colors.black54),
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => const Books())),
                );
              },
              icon: const Icon(Icons.arrow_forward_ios,size: 20,),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Fashion & Lifestyle',
              style:
                  TextStyle(color: Colors.black54),
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => const Fashion())),
                );
              },
              icon: const Icon(Icons.arrow_forward_ios,size: 20,),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Gadget & Electronics',
              style:
                  TextStyle(color: Colors.black54),
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => const Gadget())),
                );
              },
              icon: const Icon(Icons.arrow_forward_ios,size: 20,),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Home & Gardening',
              style:
                  TextStyle(color: Colors.black54),
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => const Gardening())),
                );
              },
              icon: const Icon(Icons.arrow_forward_ios,size: 20,),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Snacks',
              style:
                  TextStyle(color: Colors.black54),
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => const Snacks())),
                );
              },
              icon: const Icon(Icons.arrow_forward_ios,size: 20),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'GrapFood',
              style:
                  TextStyle(color: Colors.black54),
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => const GrapFood())),
                );
              },
              icon: const Icon(Icons.arrow_forward_ios,size: 20),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Everyday Needs',
              style:
                  TextStyle(color: Colors.black54),
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => const Needs())),
                );
              },
              icon: const Icon(Icons.arrow_forward_ios,size: 20),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Winter Collection',
              style:
                  TextStyle(color: Colors.black54),
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => const Winter())),
                );
              },
              icon: const Icon(Icons.arrow_forward_ios,size: 20),
            ),
          ),
          const Divider(),
        ],
      )),
      body: Center(
        child: ElevatedButton(
          //open/close drawer by code
          child: const Text("Open/Close Drawer"),
          onPressed: () {
            if (scaffoldKey.currentState!.isDrawerOpen) {
              scaffoldKey.currentState!.closeDrawer();
              //close drawer, if drawer is open
            } else {
              scaffoldKey.currentState!.openDrawer();
              //open drawer, if drawer is closed
            }
          },
        ),
      ),
    );
  }
}
