import 'package:flutter/material.dart';

class Snacks extends StatefulWidget {
  const Snacks({Key? key}) : super(key: key);

  @override
  State<Snacks> createState() => _SnacksState();
}

class _SnacksState extends State<Snacks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: TextField(
            decoration: InputDecoration(
              contentPadding:
              EdgeInsets.symmetric(vertical: 15.0, horizontal: 0),
              hintText: "Search...",
              suffixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: Text(
                  'Home > Snacks',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.grey,width: 1),
                ),
                height: 70,
                width: 400,
                margin: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Sub cetagories',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),
                    SizedBox(height: 20,),
                    Text('No subcetagory available.',style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 220,
                    width: 165,
                    padding: EdgeInsets.zero,
                    margin: const EdgeInsets.fromLTRB(2, 10, 1, 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(blurRadius: 0.1, offset: Offset(0, 0.2))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Stack(
                        children: [
                          Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                    "https://inv.grapfood.com/uploads/img/1671686882_Twing%20500ml.jpg",
                                    height: 150,
                                    width: 165,
                                    fit: BoxFit.fill,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, top: 10, right: 8),
                                    child: Text('Twing 500ml',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  const SizedBox(height: 8),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, right: 8),                                    child: Text(
                                      'Tk.30.00',
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 20,
                  ),
                  Container(
                    height: 220,
                    width: 165,
                    padding: EdgeInsets.zero,
                    margin: const EdgeInsets.fromLTRB(2, 10, 1, 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(blurRadius: 0.1, offset: Offset(0, 0.2))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Stack(
                        children: [
                          Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                    "https://inv.grapfood.com/uploads/img/1671691361_Chocolate%20Cream%20Wafer%20Biscuit.jpg",
                                    height: 150,
                                    width: 165,
                                    fit: BoxFit.fill,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, top: 10, right: 8),
                                    child: Text('Chocolate Cream Wafer Biscuit',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  const SizedBox(height: 8),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, right: 8),                                    child: Text(
                                      'Tk.20.00',
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 220,
                    width: 165,
                    padding: const EdgeInsets.only(top: 0),
                    margin: const EdgeInsets.fromLTRB(2, 10, 1, 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(blurRadius: 0.1, offset: Offset(0, 0.2))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Stack(
                        children: [
                          Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                    "https://inv.grapfood.com/uploads/img/1671686695_Mojo%20Zero%20Can%20250ml.jpg",
                                    height: 150,
                                    width: 165,
                                    fit: BoxFit.fill,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, top: 10, right: 8),
                                    child: Text('Mojo Zero Can 250ml',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  const SizedBox(height: 8),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, right: 8),                                    child: Text(
                                      'Tk.35.00',
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 20,
                  ),
                  Container(
                    height: 220,
                    width: 165,
                    padding: EdgeInsets.zero,
                    margin: const EdgeInsets.fromLTRB(2, 10, 1, 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(blurRadius: 0.1, offset: Offset(0, 0.2))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Stack(
                        children: [
                          Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                    "https://inv.grapfood.com/uploads/img/1671125766_Pran%20Lacchi%20200ml.jpg",
                                    height: 150,
                                    width: 165,
                                    fit: BoxFit.fill,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, top: 10, right: 8),
                                    child: Text(
                                      'Pran Lacchi 200ml',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, right: 8),                                    child: Text(
                                      'Tk.25.00',
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 220,
                    width: 165,
                    padding: const EdgeInsets.only(top: 0),
                    margin: const EdgeInsets.fromLTRB(2, 10, 1, 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(blurRadius: 0.1, offset: Offset(0, 0.2))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Stack(
                        children: [
                          Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                    "https://inv.grapfood.com/uploads/img/1671686695_Mojo%20Zero%20Can%20250ml.jpg",
                                    height: 150,
                                    width: 165,
                                    fit: BoxFit.fill,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, top: 10, right: 8),
                                    child: Text('Mojo Zero Can 250ml',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  const SizedBox(height: 8),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, right: 8),                                    child: Text(
                                    'Tk.35.00',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 20,
                  ),
                  Container(
                    height: 220,
                    width: 165,
                    padding: EdgeInsets.zero,
                    margin: const EdgeInsets.fromLTRB(2, 10, 1, 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(blurRadius: 0.1, offset: Offset(0, 0.2))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Stack(
                        children: [
                          Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                    "https://inv.grapfood.com/uploads/img/1671125766_Pran%20Lacchi%20200ml.jpg",
                                    height: 150,
                                    width: 165,
                                    fit: BoxFit.fill,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, top: 10, right: 8),
                                    child: Text(
                                      'Pran Lacchi 200ml',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, right: 8),                                    child: Text(
                                    'Tk.25.00',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 220,
                    width: 165,
                    padding: const EdgeInsets.only(top: 0),
                    margin: const EdgeInsets.fromLTRB(2, 10, 1, 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(blurRadius: 0.1, offset: Offset(0, 0.2))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Stack(
                        children: [
                          Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                    "https://inv.grapfood.com/uploads/img/1671686695_Mojo%20Zero%20Can%20250ml.jpg",
                                    height: 150,
                                    width: 165,
                                    fit: BoxFit.fill,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, top: 10, right: 8),
                                    child: Text('Mojo Zero Can 250ml',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  const SizedBox(height: 8),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, right: 8),                                    child: Text(
                                    'Tk.35.00',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 20,
                  ),
                  Container(
                    height: 220,
                    width: 165,
                    padding: EdgeInsets.zero,
                    margin: const EdgeInsets.fromLTRB(2, 10, 1, 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(blurRadius: 0.1, offset: Offset(0, 0.2))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Stack(
                        children: [
                          Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                    "https://inv.grapfood.com/uploads/img/1671125766_Pran%20Lacchi%20200ml.jpg",
                                    height: 150,
                                    width: 165,
                                    fit: BoxFit.fill,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, top: 10, right: 8),
                                    child: Text(
                                      'Pran Lacchi 200ml',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, right: 8),                                    child: Text(
                                    'Tk.25.00',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: const Color(0xFFE9E2E2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Image.network(
                    "https://grapmart.com/logo.png?imwidth=256",
                    height: 100,
                    width: 100,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                      'GrapMart is committed to provide best quality product for customers and keep fast delivery service.'),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Contact',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(Icons.email),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text('muksitur35-466@diu.edu.bd'),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(Icons.location_on_sharp),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text('Dhaka, Bangladesh'),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Privacy & Info",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8, bottom: 5),
                  child: Text('About Us'),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8, bottom: 5),
                  child: Text('Privacy Policy'),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8, bottom: 5),
                  child: Text('Term Conditions'),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8, bottom: 5),
                  child: Text('FAQs'),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "My Account",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8, bottom: 5),
                  child: Text('Dashboard'),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8, bottom: 5),
                  child: Text('My orders'),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8, bottom: 25),
                  child: Text('Change Password'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
