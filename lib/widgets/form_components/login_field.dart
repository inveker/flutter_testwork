import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  const LoginField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Логин',
          style: TextStyle(fontWeight: FontWeight.w700, color: Color(0xFF373654), fontSize: 16),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Номер договора',
              hintStyle: TextStyle(
                color: Color(0xFFDEDFE3),
                fontSize: 16,
              ),
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
            ),
          ),
        ),
      ],
    );
  }
}
