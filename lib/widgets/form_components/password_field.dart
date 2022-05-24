import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({Key? key}) : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool hidden = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Пароль',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Color(0xFF373654),
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 50,
          child: TextField(
            obscureText: hidden,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color(0xFF373654),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color(0xFF373654),
                  width: 2,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: IconButton(
                  icon: SvgPicture.asset(
                    'assets/images/eyes_icon.svg',
                    color: hidden ? null : Color(0xFFF10600),
                  ),
                  onPressed: () {
                    setState(() {
                      hidden = !hidden;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
