import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tree_mitra/pages/about.dart';
import 'package:tree_mitra/pages/contact.dart';
import 'package:tree_mitra/pages/privacy.dart';
import 'package:velocity_x/velocity_x.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: DrawerHeader(
        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.lightGreen.shade300.withOpacity(0.8),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20)
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50,bottom: 20),
                child: Image.asset(
                  "assets/images/tree_mittra.png",
                  alignment: Alignment.topCenter,
                  scale: 1.3,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child:const  Text(
                  'Adopt | Plant | Nurture',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15
                  ),
                ).p32(),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const ListTile(
                  leading: Icon(
                    CupertinoIcons.home,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17
                    ),
                  ),
                ).p2(),
              ),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AboutUS()));
                },
                child: const ListTile(
                  leading: Icon(
                    CupertinoIcons.info,
                    color: Colors.black,
                  ),
                  title: Text(
                    'About Tree Mittra',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17
                    ),
                  ),
                ).p2(),
              ),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ContactUs()));
                },
                child: const ListTile(
                  leading: Icon(
                    CupertinoIcons.mail,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Contact us',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17
                    ),
                  ),
                ).p2(),
              ),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const PrivacyPolicy()));
                },
                child: const ListTile(
                  leading: Icon(
                    CupertinoIcons.lock_shield,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Privacy policy',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17
                    ),
                  ),
                ).p2(),
              ),
               
            ],
          ),
        ),       
      ),
    );
  }
}