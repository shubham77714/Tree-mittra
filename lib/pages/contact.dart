import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,iconTheme: const IconThemeData(color: Colors.black),),
      backgroundColor: Colors.green.shade100,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Contact us",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ).py24(),
            const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: RichText(
                text: TextSpan(
                  text: "Email us on ",
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500
                  ),
                  children: [
                    TextSpan(
                      text: "tatapower@tatapower.com",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue.shade800,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline
                      ),
                      recognizer: TapGestureRecognizer() ..onTap = () =>
                        launch(
                          "mailto:tatapower@tatapower.com"
                        )
                    ),
                    const TextSpan(
                      text: " so that we can provide you with the support you need.",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500
                      ),
                    )
                  ]
                )
              ),
            )
          ],
        ),
      )
    );
  }
}