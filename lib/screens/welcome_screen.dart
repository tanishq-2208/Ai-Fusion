import 'package:flutter/material.dart';
import 'package:ridebhaiya/screens/signin_screen.dart';
import 'package:ridebhaiya/screens/signup_screen.dart';
import 'package:ridebhaiya/theme/theme.dart';
import 'package:ridebhaiya/widgets/custom_scaffold.dart';
import 'package:ridebhaiya/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: 'Welcome! to\nAI Fusion',
                            style: TextStyle(
                              fontSize: 45.0,
                              fontWeight: FontWeight.w600,
                            )),
                      ],
                    ),
                  ),
                ),
              )),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  const Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign in',
                      onTap: SignInScreen(),
                      color: Colors.transparent,
                      textColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign up',
                      onTap: const SignUpScreen(),
                      color: Colors.white,
                      textColor: lightColorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}