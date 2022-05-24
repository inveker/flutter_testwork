import 'package:flutter/material.dart';
import 'package:flutter_testwork/widgets/form_components/login_field.dart';
import 'package:flutter_testwork/widgets/form_components/password_field.dart';
import 'package:flutter_testwork/widgets/form_components/signin_button.dart';

class SigninForm extends StatelessWidget {
  const SigninForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 272,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Вход',
            style: TextStyle(
              fontSize: 54,
              fontWeight: FontWeight.w800,
              color: Color(0xFF373654),
            ),
          ),
          const SizedBox(height: 40),
          LoginField(),
          const SizedBox(height: 24),
          PasswordField(),
          const SizedBox(height: 40),
          SigninButton(),
          const SizedBox(height: 32),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(0),
                primary: Color(0xFFF10600),
              ),
              child: Text(
                'Не помню пароль',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF373654),
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
