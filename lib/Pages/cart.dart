import 'package:flutter/material.dart';
import 'package:grapmart3/Pages/Home_page.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
      leading: const Icon(Icons.shopping_bag_outlined,color: Colors.black,),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => const HomePage())),
            );
          },
          icon: const Icon(Icons.clear,color: Colors.black,),
        )
      ],
      title: const Text('0 ITEMS',
          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black,fontSize: 15)),
    ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Stack(children: [
            Stack(
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network('https://grapmart.com/404.png?imwidth=256'),
                    ),
                    const Text('Your cart is empty',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey))
                  ],
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}


