import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// TextStyle titleStyle = GoogleFonts.poppins(
//   textStyle: Theme.of(context).textTheme.displayLarge,
//   fontSize: 30,
//   fontWeight: FontWeight.w700,
// );

TextStyle _getTextStyle(
    BuildContext context, FontWeight fontWeight, double fontSize) {
  return GoogleFonts.poppins(
    textStyle: Theme.of(context).textTheme.displayLarge,
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          Image.asset('assets/onboard/onboard_1.png'),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to ",
                  style: _getTextStyle(context, FontWeight.w700, 30),
                ),
                SizedBox(
                  height: 30,
                  child: Image.asset('assets/byta_logo/byta_small_logo.png'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(70, 15, 70, 10),
            child: Text(
              "Securely send money for approved purchases through our platform to your children.",
              style: _getTextStyle(context, FontWeight.w400, 20.99),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const OnboardingScreen2()),
          );
        },
        shape: const CircleBorder(),
        backgroundColor: const Color(0xFFE0AC94),
        foregroundColor: const Color(0xFFF5EAE5),
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 70),
            Image.asset('assets/onboard/onboard_2.png'),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                "Track your child's spending!",
                style: _getTextStyle(context, FontWeight.w700, 30),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(70, 15, 70, 10),
              child: Text(
                "Stay informed about your child's purchases with Byta's transaction history and notifications.",
                style: _getTextStyle(context, FontWeight.w400, 20.99),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const OnboardingScreen3()),
          );
        },
        shape: const CircleBorder(),
        backgroundColor: const Color(0xFFE0AC94),
        foregroundColor: const Color(0xFFF5EAE5),
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}

class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 0),
          Image.asset('assets/onboard/onboard_3.png'),
          Padding(
            padding: const EdgeInsets.fromLTRB(70, 10, 70, 10),
            child: Text(
              "Start spending with Byta today!",
              style: _getTextStyle(context, FontWeight.w700, 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(70, 15, 70, 10),
            child: Text(
              "Sign up now and experience the convenience of indirect money transfers for your child's essential needs.",
              style: _getTextStyle(context, FontWeight.w400, 20.99),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
