import 'package:flutter/material.dart';
import 'package:grapmart3/Pages/Dashboard.dart';
class Verificarion extends StatefulWidget {
  const Verificarion({Key? key}) : super(key: key);

  @override
  State<Verificarion> createState() => _VerificarionState();
}

class _VerificarionState extends State<Verificarion> {
  @override
  Widget build(BuildContext context) {
    return Container(
color: Colors.white,
      child: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Image.network('https://grapmart.com/logo.png?imwidth=256',height: 100,width: 250,),
              ),
              const Text('OTP Verification',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),),
              const SizedBox(height: 20,),
              const Text('We have sent a code to your phone 017******44',style: TextStyle(fontSize: 12,color: Colors.black54),),

            const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 30,),
                  Material(
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: '',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30,),
                  Material(
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      //padding: const EdgeInsets.only(left: 10, right: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: '',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30,),
                  Material(
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: '',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30,),
                  Material(
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: '',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50,),
              Material(
                child: Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => const Dashboard())),);
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
                          'Verify Account',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Padding(padding: EdgeInsets.only(bottom: 10)),
                  const Text("Didn't recieve code?", style: TextStyle(fontSize: 12,color: Colors.black54),),
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => const Verificarion())),);
                    },
                    child: const Text('Resend', style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
