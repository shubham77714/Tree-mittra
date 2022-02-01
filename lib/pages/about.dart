import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class AboutUS extends StatelessWidget {
  const AboutUS({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,iconTheme: const IconThemeData(color: Colors.black),),
      backgroundColor: Colors.green.shade100,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "About us",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ).py24(),
            const Text(
              ("Tree Mittra, an unique flagship volunteering initiative, is a virtual plantation drive by Tata Power"
              "under the Green theme which aims at encouraging employees and their families to adopt a tree, plant "
               "and nurture its survival.\nThe time has come now to give back to our planet all that we have devoured"
               " to ensure that our future generations continue to live and thrive in this beautiful planet as healthy "
               "individuals in complete harmony with nature and wild life.\nTATA Power is conducting a nationwide "
               "virtual tree plantation drive involving all our customers, employees and their families as well as our "
               "stakeholders under our thematic initiative Tree Mittra.\nA unique approach under our Green Community."
               "\nTo know more, click on the link below"),
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.w500
              ),
              textAlign: TextAlign.justify,
            ).p20(),
            InkWell(
              onTap: () => launch(
                "https://www.tatapower.com/green-community/tree-mittra/",
                forceWebView: true,
                enableJavaScript: true
              ),
              child: Text(
                "https://www.tatapower.com/green-community/tree-mittra/",
                style: TextStyle(
                  color: Colors.blue.shade800,
                  decoration: TextDecoration.underline,
                  fontSize: 16
                ),  
              ).p24(),
            )
          ],
        ),
      )
    );
  }
}