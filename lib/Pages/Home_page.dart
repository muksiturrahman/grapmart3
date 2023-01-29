import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grapmart3/Pages/Product Details/Twing.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imageList = [
    "https://ridecare.s3.ap-south-1.amazonaws.com/grapmart/grapmart-1672505976-2610-Banner%20002-02.png",
    "https://ridecare.s3.ap-south-1.amazonaws.com/grapmart/grapmart-1672505885-6089-Banner%20001-01.png",
  ];
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
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          CarouselSlider(
              items: imageList
                  .map((e) => ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.network(
                            e,
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,
                          )
                        ],
                      )))
                  .toList(),
              options: CarouselOptions(
                autoPlay: true,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
                height: 120,
              )),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              "https://ridecare.s3.ap-south-1.amazonaws.com/grapmart/grapmart-1672838442-8974-ads-02.png",
              height: 25,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               GestureDetector(
                  onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: ((context) => const Twing())),
    );
    },
                 child: Container(
                    height: 220,
                    width: 165,
                    padding: EdgeInsets.zero,
                    margin: const EdgeInsets.fromLTRB(2, 10, 1, 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(color: Colors.grey.shade400,spreadRadius: 0.5,blurRadius: 4,offset: const Offset(0,5))
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
                                    width: 185,
                                    fit: BoxFit.fill,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, top: 10, right: 8),
                                    child: Text('Twing 500ml',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,color: Colors.black)),
                                  ),
                                  const SizedBox(height: 8),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Text(
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
               ),
              const SizedBox(
                height: 10,
                width: 20,
              ),
                GestureDetector(
                  onTap: (){
                    showDialog(context: context, builder: (context){
                      return Dialog(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        insetPadding: const EdgeInsets.all(20),
                        elevation: 0,
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(icon: const Icon(Icons.clear), onPressed: (){},),
                              Image.network('https://inv.grapfood.com/uploads/img/1671691361_Chocolate%20Cream%20Wafer%20Biscuit.jpg',fit: BoxFit.cover,),
                              const SizedBox(height: 20,),
                              const Text('Twing 500ml',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black, fontSize: 20),),
                              const SizedBox(height: 10,),
                              const Text('SKU : 1.0000'),
                              const Text('Price : 30.00 tk'),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('Specification',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),
                                      SizedBox(height: 10,),
                                      Text('Brand',style: TextStyle(color: Colors.black54),),
                                      Text('Weight',style: TextStyle(color: Colors.black54)),
                                      Text('Flavour',style: TextStyle(color: Colors.black54)),
                                      Text('Subcategory',style: TextStyle(color: Colors.black54)),

                                    ],
                                  ),
                                  const SizedBox(width: 40,),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('Description',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),
                                      SizedBox(height: 10,),
                                      Text('Akij Food',style: TextStyle(color: Colors.black54),),
                                      Text('500ml',style: TextStyle(color: Colors.black54),),
                                      Text('Carbonated',style: TextStyle(color: Colors.black54),),
                                      Text('Drinks',style: TextStyle(color: Colors.black54),),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 40,),
                              Material(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 40, right: 40),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'ADD TO CART',
                                          style: TextStyle(
                                            color: Colors.white,
                                            //fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
                  },
                  child: Container(
                    height: 220,
                    width: 165,
                    padding: EdgeInsets.zero,
                    margin: const EdgeInsets.fromLTRB(2, 10, 1, 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow:  [
                          BoxShadow(color: Colors.grey.shade400,spreadRadius: 0.5,blurRadius: 4,offset: const Offset(0,5))
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
                                            fontWeight: FontWeight.bold,color: Colors.black)),
                                  ),
                                  const SizedBox(height: 8),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Text(
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
                ),
            ],
          ),
          //),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  showDialog(context: context, builder: (context){
                    return Container(
                      color: Colors.transparent,
                      child:
                      Image.asset("asset/images/twing.png"),

                    );
                  });
                },
                child: Container(
                  height: 220,
                  width: 165,
                  padding: const EdgeInsets.only(top: 0),
                  margin: const EdgeInsets.fromLTRB(2, 10, 1, 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow:  [
                        BoxShadow(color: Colors.grey.shade400,spreadRadius: 0.5,blurRadius: 4,offset: const Offset(0,5))
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
                                  "https://inv.grapfood.com/uploads/img/1671686597_Coca-Cola%20250ml.jpg",
                                  height: 150,
                                  width: 165,
                                  fit: BoxFit.fill,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 8, top: 10, right: 8),
                                  child: Text('Coca-Cola 250ml',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                                const SizedBox(height: 8),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 8, right: 8),
                                  child: Text(
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
                    boxShadow:  [
                      BoxShadow(color: Colors.grey.shade400,spreadRadius: 0.5,blurRadius: 4,offset: const Offset(0,5))
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
                                "https://inv.grapfood.com/uploads/img/1671694179_1+z.jpg",
                                height: 150,
                                width: 165,
                                fit: BoxFit.fill,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 8, top: 10, right: 8),
                                child: Text(
                                  'OnePlus Bullets Wireless...',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 8),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 8, right: 8),
                                child: Text(
                                  'Tk.499.00',
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
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade400,spreadRadius: 0.5,blurRadius: 4,offset: const Offset(0,5))
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
                                "https://inv.grapfood.com/uploads/img/1671696751_Good%20Luck%20Eraser%20blck.jpg",
                                height: 150,
                                width: 165,
                                fit: BoxFit.fill,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 8, top: 10, right: 8),
                                child: Text('Good Luck Xtreme Eraser',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold)),
                              ),
                              const SizedBox(height: 8),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 8, right: 8),
                                child: Text(
                                  'Tk.15.00',
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
                    boxShadow:  [
                      BoxShadow(color: Colors.grey.shade400,spreadRadius: 0.5,blurRadius: 4,offset: const Offset(0,5))
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
                                "https://inv.grapfood.com/uploads/img/1670836447_milk_500ml.jpg",
                                height: 150,
                                width: 165,
                                fit: BoxFit.fill,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 8, top: 10, right: 8),
                                child: Text(
                                  'GrapFood Boiled Milk 500ml',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 8, right: 8),
                                child: Text(
                                  'Tk.50.00',
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
                    boxShadow:  [
                      BoxShadow(color: Colors.grey.shade400,spreadRadius: 0.5,blurRadius: 4,offset: const Offset(0,5))
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
                                "https://inv.grapfood.com/uploads/img/1671696808_Good%20Luck%20Scholar%20Scale%20(30cm).jpg",
                                height: 150,
                                width: 165,
                                fit: BoxFit.fill,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 8, top: 10, right: 8),
                                child: Text(
                                    'Good Luck Scholar Scale (30cm)',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold)),
                              ),
                              const SizedBox(height: 8),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 8, right: 8),
                                child: Text(
                                  'Tk.15.00',
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
                    boxShadow:  [
                      BoxShadow(color: Colors.grey.shade400,spreadRadius: 0.5,blurRadius: 4,offset: const Offset(0,5))
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
                                "https://inv.grapfood.com/uploads/img/1673204631_Fair-and-lovely_GrapFood.jpg",
                                height: 150,
                                width: 165,
                                fit: BoxFit.fill,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 8, top: 10, right: 8),
                                child: Text(
                                  'Fair and lovely',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 8, right: 8),
                                child: Text(
                                  'Tk.55.00',
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
                    boxShadow:  [
                      BoxShadow(color: Colors.grey.shade400,spreadRadius: 0.5,blurRadius: 4,offset: const Offset(0,5))
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
                                "https://inv.grapfood.com/uploads/img/1671697482_Black%20Umbrella.jpg",
                                height: 150,
                                width: 165,
                                fit: BoxFit.fill,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 8, top: 10, right: 8),
                                child: Text('Black Umbrella',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold)),
                              ),
                              const SizedBox(height: 8),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 8, right: 8),
                                child: Text(
                                  'Tk.300.00',
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
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade400,spreadRadius: 0.5,blurRadius: 4,offset: const Offset(0,5))
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
                                "https://inv.grapfood.com/uploads/img/1671694161_M10.jpg",
                                height: 150,
                                width: 165,
                                fit: BoxFit.fill,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 8, top: 10, right: 8),
                                child: Text(
                                  'M10 TWS Wireless Earbuds',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 8, right: 8),                                  child: Text(
                                  'Tk.650.00',
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
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade400,spreadRadius: 0.5,blurRadius: 4,offset: const Offset(0,5))
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
                                    left: 8, right: 8),                                  child: Text(
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
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade400,spreadRadius: 0.5,blurRadius: 4,offset: const Offset(0,5))
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
                                    left: 8, right: 8),                                  child: Text(
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
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.grey.shade100,
            padding: const EdgeInsets.all(15),
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
                  padding: EdgeInsets.only(left: 8,right: 10,bottom: 8),
                  child: Text(
                      'GrapMart is the affiliated company of the GrapGroup that aims to connect people with the best services available online shop available in Ashulia . We thrive to provide customers to meet their daily needs optimally and effectively.',style: TextStyle(color: Colors.black54)),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8,right: 10,bottom: 8,top: 8),
                  child: Text(
                    'Contact',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 8,right: 10,bottom: 8,top: 8),
                      child: Icon(Icons.email,color: Colors.black54,),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text('muksitur35-466@diu.edu.bd',style: TextStyle(color: Colors.black54)),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 8,right: 10,bottom: 8,top: 8),
                      child: Icon(Icons.location_on_sharp,color: Colors.black54,),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text('Dhaka, Bangladesh',style: TextStyle(color: Colors.black54)),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8,right: 10,bottom: 8,top: 8),
                  child: Text(
                    "Privacy & Info",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8,right: 10,bottom: 8,top: 8),
                  child: Text('About Us',style: TextStyle(color: Colors.black54)),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8,right: 10,bottom: 8,top: 8),
                  child: Text('Privacy Policy',style: TextStyle(color: Colors.black54)),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8,right: 10,bottom: 8,top: 8),
                  child: Text('Term Conditions',style: TextStyle(color: Colors.black54)),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8,right: 10,bottom: 8,top: 8),
                  child: Text('FAQs',style: TextStyle(color: Colors.black54)),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8,right: 10,bottom: 8,top: 8),
                  child: Text(
                    "My Account",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8,right: 10,bottom: 8,top: 8),
                  child: Text('Dashboard',style: TextStyle(color: Colors.black54)),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8,right: 10,bottom: 8,top: 8),
                  child: Text('My orders',style: TextStyle(color: Colors.black54)),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8,right: 10,bottom: 8,top: 8),
                  child: Text('Change Password',style: TextStyle(color: Colors.black54),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Chocolate chips',
    'Pran chips',
    'Ruchi dal vaja',
  ];

  List<Widget> buildAction(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  Widget buildResult(BuildContext context) {
    List<String> matchQuery = [];
    for (var chips in searchTerms) {
      if (chips.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(chips);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var chips in searchTerms) {
      if (chips.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(chips);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var chips in searchTerms) {
      if (chips.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(chips);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
