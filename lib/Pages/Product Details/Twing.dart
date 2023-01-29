import 'package:flutter/material.dart';
class Twing extends StatefulWidget {
  const Twing({Key? key}) : super(key: key);

  @override
  State<Twing> createState() => _TwingState();
}

class _TwingState extends State<Twing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.clear,color: Colors.black,),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network("https://inv.grapfood.com/uploads/img/1671686882_Twing%20500ml.jpg"),
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

              )

            ],
          ),
        ),
      ),
    );
  }
}
