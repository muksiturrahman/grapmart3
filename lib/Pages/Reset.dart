import 'package:flutter/material.dart';
import 'package:grapmart3/Pages/account.dart';
class Reset extends StatefulWidget {
  const Reset({Key? key}) : super(key: key);

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
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
              const Text('Reset Password',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),),
            const SizedBox(height: 10,),
            const Text('Just enter phone number, we will send reset process.',style: TextStyle(fontSize: 12,color: Colors.black54),)],
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Phone Number',
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
          const SizedBox(height: 25),
          //sign button
          Material(
            child: Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: TextButton(
                onPressed: (){},
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
                      'Reset',
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
              const Text("Back to", style: TextStyle(fontSize: 12,color: Colors.black54),),
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
