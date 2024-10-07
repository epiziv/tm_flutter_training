import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Accordian extends StatelessWidget {
  const Accordian({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AccordionPage(),
    );
  }
}

/// Main example page
class AccordionPage extends StatelessWidget //__
{
  static const headerStyle = TextStyle(
      color: Color(0xffffffff), fontSize: 18, fontWeight: FontWeight.bold);
  static const contentStyleHeader = TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.w700);
  static const contentStyle = TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
  static const loremIpsum =
      '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';
  static const slogan =
      'Do not forget to play around with all sorts of colors, backgrounds, borders, etc.';

  const AccordionPage({super.key});

  @override
  build(context) => Scaffold(
        backgroundColor: Colors.white,
       /* appBar: AppBar(
          title: const Text('Accordion'),
        ),*/
        body: Accordion(
          headerBorderColor: Colors.black,
          //headerBorderColorOpened: Colors.transparent,
          // headerBorderWidth: 1,
          headerBackgroundColorOpened: Colors.white,
          contentBackgroundColor: Colors.white,
          contentBorderColor: Colors.white,
          contentBorderWidth: 1,
          contentHorizontalPadding: 20,
          //scaleWhenAnimating: true,
          //openAndCloseAnimation: true,
          headerPadding:
              const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
          sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
          sectionClosingHapticFeedback: SectionHapticFeedback.light,
          children: [
            AccordionSection(
              isOpen: false,
              contentVerticalPadding: 20,
              leftIcon:
              const Icon(Icons.text_fields_rounded, color: Colors.white),
              header: const Text('How do I get my registered email??', style: headerStyle),
              content: const Text('To access your account, please reach out to your administrator for instructions and credentials.', style: contentStyle),
            ),
             AccordionSection(
              isOpen: false,
              contentVerticalPadding: 20,
              leftIcon:
                  const Icon(Icons.text_fields_rounded, color: Colors.white),
              header: const Text('What should I do if I forgot my password', style: headerStyle),
              content: const Text('If you forget your password, simply click on the "Forgot your password?" on the login page. You will need to enter your registered email address, and instructions for resetting your password will be sent to you. If you don’t see the email in your inbox, be sure to check your Spam / Junk folder.', style: contentStyle),
            ),
             AccordionSection(
              isOpen: false,
              contentVerticalPadding: 20,
              leftIcon:
                  const Icon(Icons.text_fields_rounded, color: Colors.white),
              header: const Text('How do I unlock my account', style: headerStyle),
              content: const Text('Your account may become locked after several failed login attempts. To regain access, you can either click on "Forgot your password?" to reset your credentials or contact your administrator for further assistance.', style: contentStyle),
            ),
             AccordionSection(
              isOpen: false,
              contentVerticalPadding: 20,
              leftIcon:
                  const Icon(Icons.text_fields_rounded, color: Colors.white),
              header: const Text('What if I dont receive the veification code/email', style: headerStyle),
              content: const Text('If you don’t receive the verification code, check your Spam / Junk folder. You can request a new code by clicking "Resend code / Resend email”. If the problem continues, contact your administrator for further assistance.', style: contentStyle),
            ),
            AccordionSection(
              isOpen: false,
              contentVerticalPadding: 20,
              leftIcon:
                  const Icon(Icons.text_fields_rounded, color: Colors.white),
              header: const Text('Why I am seeing an email/ password entered is incorrect error', style: headerStyle),
              content: const Text('If you’re seeing an “Email / password entered is incorrect” error, double-check that your registered email and password are correct, and make sure your caps lock is turned off. If you’ve recently reset or changed your password, ensure you’re using the updated credentials.', style: contentStyle),
            ),
             AccordionSection(
              isOpen: false,
              contentVerticalPadding: 20,
              leftIcon:
                  const Icon(Icons.text_fields_rounded, color: Colors.white),
              header: const Text('What am I seeing a We cant find an account error', style: headerStyle),
              content: const Text('If you’re seeing a “We can’t find an account” error, double-check that your registered email is correct. If the problem continues, contact your administrator for further assistance.', style: contentStyle),
            ),
            AccordionSection(
              isOpen: false,
              contentVerticalPadding: 20,
              leftIcon:
                  const Icon(Icons.text_fields_rounded, color: Colors.white),
              header: const Text('Who do I contact of I still cannot log', style: headerStyle),
              content: const Text('If you’re seeing a “We can’t find an account” error, double-check that your registered email is correct. If the problem continues, contact your administrator for further assistance.', style: contentStyle),
            ),
          ],
        ),
      );
}
