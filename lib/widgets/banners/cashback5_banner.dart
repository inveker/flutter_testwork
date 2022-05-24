import 'package:flutter/material.dart';

class Cashback5Banner extends StatelessWidget {
  const Cashback5Banner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: <Widget>[
        Image.asset('assets/images/banner.png'),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: Colors.white.withOpacity(0.4),
              highlightColor: Colors.transparent,
              borderRadius: BorderRadius.circular(15),
              onTap: () {
              },
            ),
          ),
        ),
      ],
    );
  }
}
