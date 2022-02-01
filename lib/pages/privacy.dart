import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({ Key? key }) : super(key: key);

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
              "Privacy policy",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ).py24(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(15),
                child: RichText(
                  text: TextSpan(
                    text: "Effective Date: 04.03.2020\n\n",
                    style: const TextStyle(fontWeight: FontWeight.w500,color: Colors.black87),
                    children: <TextSpan>[
                      const TextSpan(
                        text: "This privacy policy applies to the use of the Tata Power EZ Home mobile application, (the “App”) "
                          "and the service offered by Tata Power, including through use of the Tata Power Enabled Smart IOT "
                          "Devices (collectively, the \"Services\"). By using this App and the Services or by transmitting "
                          "information to us by email or other electronic means, you agree to this privacy policy.\n\n",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400)
                      ),
                      const TextSpan(
                        text: "1. Changes to Privacy Policy\n",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700)
                      ),
                      const TextSpan(
                        text: "We may change and update this privacy policy from time to time and for any significant changes "
                        "affecting your personally identifiable information, we will update the App accordingly and provide "
                        "written notice to you, which, for these purposes, shall include an email sent to the email address "
                        "you have on file with us. If you disagree with any change, you must stop using the services. The "
                        "continued use of the services will be considered as acceptance of the change.",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400)
                      ),
                      const TextSpan(
                        text: "\n\n2. Information Collection and Usage\n",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700)
                      ),
                      const TextSpan(
                        text: "We may collect certain device operational and demographic information which is non-personally identifiable "
                          "in nature in order to understand how users uses devices and the App and to improve your experience of using "
                          "the App.\n\n"
                          "We may also collect certain personally identifiable information if you sign up for the Service or "
                          "use the Service or send email or other communication to us, in order to process your inquiries, respond to "
                          "your requests and improve our Services. All of this information used to specifically identify you is called "
                          "\"User Information\" in this privacy policy. We only collect User Information that you provide to us or have "
                          "given us permission to collect.\n\n"
                          "When you use our Services, we may collect certain device operational and demographic information to improve "
                          "your experience of using our Services.\n\n"
                          "We use the User Information in order to process the application, to provide the Services to the customers and "
                          "users and to otherwise communicate with you as a customer or user regarding the Services. We reserve the right "
                          "to send you certain communications relating to your use of the Services, such as service announcements, "
                          "notices about new features or information on the Services, administrative messages and communications regarding "
                          "your account as well as advertisements from Tata Power or its partners and you will have an opportunity to "
                          "opt out of receiving them. We may also collect information via online surveys or polls. Participation in these "
                          "surveys or polls is entirely voluntary and you may easily decline to participate.\n\n"
                          "From time to time, you may receive offers through the App from other businesses. These offers may require you "
                          "to provide information to them if you choose to accept their offers. These offers are made by the businesses "
                          "themselves and Tata Power disclaims any responsibility for any information provided by you to any such other "
                          "businesses. Tata Power may receive information from these regarding your response to their offers so that "
                          "Tata Power may better tailor your user experience.",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400)
                      ),
                      const TextSpan(
                        text: "\n\n3. Information Sharing\n",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700)
                      ),
                      const TextSpan(
                        text: "Tata Power does not share User Information with any third-party in a way that would personally identify "
                          "you. However, we may do so in the following circumstances:\n"
                          "\n\t(a) as part of a merger, acquisition or any form of sale of some or all of Tata Power assets or business,\n"
                          "\n\t(b) to our service providers and other contractors for the purposes of providing services to us;\n"
                          "\n\t(c) to resolve customer disputes or inquiries;\n"
                          "\n\t(d) in the event of insolvency, in which your personal information would be transferred as one of Tata Power’s business assets; and\n"
                          "\n\t(e) where we are legally obligated to disclose information to any governmental or regulatory authority.\n"
                          "\nWe may aggregate information and data about you and your use of the App and Services and provide such "
                          "aggregated information and data to advertisers for marketing or promotional purposes. In these circumstances, "
                          "we do not disclose information that could be used to personally identify you.",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400)
                      ),
                      const TextSpan(
                        text: "\n\n4. Security Measures\n",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700)
                      ),
                      const TextSpan(
                        text: "To help protect the privacy of the data you transmit through the App or Services, we use industry-standard "
                          "secure server software that encrypts the information you input before it is sent to us. In addition, Tata Power "
                          "uses standard industry practice to protect User Information against unauthorized access. However, you should "
                          "keep in mind that the App and Services are run on software, hardware and networks, any component of which may "
                          "from time to time require maintenance or experience problems or breaches of security beyond our control and for "
                          "which we are not responsible.",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400)
                      ),
                      const TextSpan(
                        text: "\n\n5. Links to Third-Party Websites\n",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700)
                      ),
                      const TextSpan(
                        text: "This App may contain links to third party sites. Access to any other Internet site linked to this App "
                          "is at the user’s own risk and Tata Power is not responsible for the accuracy or reliability of any information, "
                          "data, opinions, advice or statements made on these sites. Tata Power provides these links merely as a convenience "
                          "and the inclusion of such links does not imply an endorsement.",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400)
                      ),
                      const TextSpan(
                        text: "\n\n6. Accessing Your User Information\n",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700)
                      ),
                      const TextSpan(
                        text: "We will try to update your User Information as we become aware of changes. However, we will be able to "
                          "serve you best if you update your User Information or notify us of by a written request for changes to (or "
                          "errors in) your User Information by contacting Tata Power Customer Services at the address given in Clause 8.",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400)
                      ),
                      const TextSpan(
                        text: "\n\n7. Governing Law and Dispute Resolution\n",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700)
                      ),
                      const TextSpan(
                        text: "You agree that any dispute over privacy or the terms contained in this privacy policy will be governed "
                          "by the laws of India and all disputes arising out of or in connection with this Agreement shall be finally "
                          "settled by arbitration to be held in Mumbai.",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400)
                      ),
                      const TextSpan(
                        text: "\n\n8. Contact Us\n",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700)
                      ),
                      const TextSpan(
                        text: "Please contact us at ",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400)
                      ),
                      TextSpan(
                        text: "tatapower.com/green-community/tree-mittra",
                        style: TextStyle(color: Colors.blue.shade800,fontWeight: FontWeight.w400,decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()..onTap = () =>
                          launch(
                            'https://www.tatapower.com/green-community/tree-mittra/connect-with-us.aspx',
                            enableJavaScript: true,
                            forceWebView: true
                          )
                          
                      ),
                      const TextSpan(
                        text: " if you have any questions.",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400)
                      ),
                      
                    ]
                  )
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}