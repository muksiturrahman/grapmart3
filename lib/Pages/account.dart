import 'package:flutter/material.dart';
import 'package:grapmart3/Pages/Dashboard.dart';
import 'package:grapmart3/Pages/Reset.dart';
import 'package:grapmart3/Pages/Sign_Up.dart';
class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.only(top: 25),
              child: Image.network('https://grapmart.com/logo.png?imwidth=256',height: 100,width: 190,),
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          const Text(
            'Sign in',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
      const SizedBox(height: 40),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Text(
          'Phone number',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 18,
          ),
        ),
      ),
      const SizedBox(height: 10),
      Material(
        child: Container(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)),
              hintText: '01XX-XXXX-XXX',
            ),
          ),
        ),
      ),
      const SizedBox(height: 20),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Text(
          'Password',
          style: TextStyle(
            color: Colors.black54,
            //fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      const SizedBox(height: 10),
      Material(
        child: Container(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.grey.shade100,width: 3)),
              hintText: 'Enter Password',
            ),
          ),
        ),
      ),
      const SizedBox(height: 28),
      //sign button
      Material(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const Dashboard())),);
            },
            child: Container(
              width: 520,
              height: 63,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    color: Colors.white,
                    //fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),),
            ),
          ),
        ),
      ),
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          //const Padding(padding: EdgeInsets.only(top: 40,)),
          const Text("Have no account?  ",style: TextStyle(fontSize: 18,color: Colors.black54),),
          GestureDetector(
            child: const Text('Sing Up', style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 18),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const SignUp())),);
            },
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Padding(padding: EdgeInsets.only(bottom: 10)),
          const Text("Forgot password? ", style: TextStyle(fontSize: 18,color: Colors.black54),),
          TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const Reset())),);
            },
            child: const Text('Reset Now', style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 18),
            ),
          ),
        ],
      ),
    ],
    );

  }

  // ignore: non_constant_identifier_names
  UserCart() {

  }
}