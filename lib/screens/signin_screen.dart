import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_testwork/widgets/banners/cashback5_banner.dart';
import 'package:flutter_testwork/widgets/forms/signin_form.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFF7D7A),
              Color(0xFFF10600),
              Color(0xFFF10600),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: _LeftBar(),
              ),
            ),
            Expanded(
              flex: 3,
              child: _RightBar(),
            ),
          ],
        ),
      ),
    );
  }
}

class _LeftBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 80),
        SvgPicture.asset(
          'assets/images/logotype_with_name.svg',
        ),
        const SizedBox(height: 120),
        const Text(
          'Личный\nкабинет',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 54,
            color: Colors.white,
            height: 1.1,
          ),
        ),
        const SizedBox(height: 32),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 16,
              height: 1.5,
            ),
            children: [
              TextSpan(
                text: 'Для входа заполните\nобязательные поля ',
              ),
              TextSpan(
                text: '«Логин»\nи «Пароль»',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _RightBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 192,
        top: 224,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(80),
          bottomLeft: Radius.circular(80),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(102, 195, 0, 0),
            offset: Offset(-32.0, 0.0),
            blurRadius: 80.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SigninForm(),
          const SizedBox(height: 36),
          Cashback5Banner(),
        ],
      ),
    );
  }
}
