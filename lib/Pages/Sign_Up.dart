import 'package:flutter/material.dart';
import 'package:grapmart3/Pages/Verification.dart';
import 'package:grapmart3/Pages/account.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Image.network('https://grapmart.com/logo.png?imwidth=256',height: 100,width: 190,),
              ),
              const Text('Sign Up',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),)
            ],
          ),      const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Name',
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
                  hintText: 'Your Name',
                ),
              ),
            ),
          ),      const SizedBox(height: 20),
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
                      borderRadius: BorderRadius.circular(15)),
                  hintText: 'Enter Password',
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          //sign button
          Material(
            child: Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const Verificarion())),);
                },
                child: Container(
                  width: 520,
                  height: 65,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Text(
                      'Sign Up',
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
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Padding(padding: EdgeInsets.only(bottom: 10)),
              const Text("Already have an account?", style: TextStyle(fontSize: 12,color: Colors.black54),),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const Account())),);
                },
                child: const Text('Sign in', style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 15),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
