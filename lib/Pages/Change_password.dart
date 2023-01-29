import 'package:flutter/material.dart';
import 'package:grapmart3/Pages/Dashboard.dart';
import 'package:grapmart3/Pages/My_documents.dart';
import 'package:grapmart3/Pages/My_order.dart';
import 'package:grapmart3/Pages/account.dart';
class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(top: 8, bottom: 8),
            child: TextField(
              //cursorColor: Colors.black,
              decoration: InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
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
          elevation: 1,
        ),
        body: ListView(
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade400,spreadRadius: 0.5,blurRadius: 18)
                      ],
                      borderRadius:  const BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 250,
                    width: 500,
                    margin: const EdgeInsets.all(10),
                    child: Column(
                        children:  [
                          TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => const Dashboard())),);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: Row(
                                children: const [
                                  Text('Dashboard',style: TextStyle(color: Colors.black54),),
                                  SizedBox(width: 240,),
                                  Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black54,),
                                ],
                              ),
                            ),
                          ),
                          const Divider(height: 2,color: Colors.black54,),
                          TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => const MyOrder())),);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: Row(
                                children: const [
                                  Text('My order',style: TextStyle(color: Colors.black54),),
                                  SizedBox(width: 250,),
                                  Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black54,),
                                ],
                              ),
                            ),
                          ),
                          const Divider(height: 0.5,color: Colors.black54,),
                          TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => const MyDocuments())),);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: Row(
                                children: const [
                                  Text('My documents',style: TextStyle(color: Colors.black54),),
                                  SizedBox(width: 215,),
                                  Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black54,),
                                ],
                              ),
                            ),
                          ),
                          const Divider(height: 2,color: Colors.black54,),
                          TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => const ChangePassword())),);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: Row(
                                children: const [
                                  Text('Change password',style: TextStyle(color: Colors.black),),
                                  SizedBox(width: 195,),
                                  Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black,),
                                ],
                              ),
                            ),
                          ),
                          const Divider(height: 1,color: Colors.black54,),
                          TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => const Account())),);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: Row(
                                children: const [
                                  Text('Logout',style: TextStyle(color: Colors.black54),),
                                  SizedBox(width: 265,),
                                  Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black54,),
                                ],
                              ),
                            ),
                          ),
                        ]
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade400,spreadRadius: 0.5,blurRadius: 18)
                      ],
                      borderRadius:  const BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 500,
                    width: 500,
                    margin: const EdgeInsets.all(10),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children:  [
                       const Padding(
                         padding: EdgeInsets.all(25.0),
                         child: Center(
                           child: Text('Change Password',style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 20,
                             color: Colors.black,
                           ),),
                         ),
                       ),
                       const Padding(
                         padding: EdgeInsets.symmetric(horizontal: 20.0),
                         child: Text(
                           'Old password',
                           style: TextStyle(
                             color: Colors.black54,
                             fontSize: 18,
                           ),
                         ),
                       ),
                       const SizedBox(height: 10,),
                       Material(
                         child: Container(
                           padding: const EdgeInsets.only(left: 20, right: 20),
                           child: TextField(
                             decoration: InputDecoration(
                               border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(15)),
                               hintText: 'Enter old password',
                             ),
                           ),
                         ),
                       ),
                       SizedBox(height: 10,),
                       const Padding(
                         padding: EdgeInsets.symmetric(horizontal: 20.0),
                         child: Text(
                           'New password',
                           style: TextStyle(
                             color: Colors.black54,
                             fontSize: 18,
                           ),
                         ),
                       ),
                       SizedBox(height: 10,),
                       Material(
                         child: Container(
                           padding: const EdgeInsets.only(left: 20, right: 20),
                           child: TextField(
                             decoration: InputDecoration(
                               border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(15)),
                               hintText: 'Enter new password',
                             ),
                           ),
                         ),
                       ),
                       SizedBox(height: 10,),
                       const Padding(
                         padding: EdgeInsets.symmetric(horizontal: 20.0),
                         child: Text(
                           'Re-type password',
                           style: TextStyle(
                             color: Colors.black54,
                             fontSize: 18,
                           ),
                         ),
                       ),
                       SizedBox(height: 10,),
                       Material(
                         child: Container(
                           padding: const EdgeInsets.only(left: 20, right: 20),
                           child: TextField(
                             decoration: InputDecoration(
                               border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(15)),
                               hintText: 'Enter password',
                             ),
                           ),
                         ),
                       ),
                       SizedBox(height: 15,),
                       Material(
                         child: Padding(
                           padding: const EdgeInsets.only(left: 15, right: 15),
                           child: TextButton(
                             onPressed: (){
                               Navigator.push(context, MaterialPageRoute(builder: ((context) => const Account())),);
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
                                   'Save Changes',
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
                     ],
                   ),
                  ),
                  const SizedBox(height: 20,),
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
            ]
        )
    );
  }
}
