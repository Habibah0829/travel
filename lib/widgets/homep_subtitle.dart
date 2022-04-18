import 'package:flutter/material.dart';

class FirstTitle extends StatelessWidget {
  const FirstTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: 'Discover',
            style: TextStyle(
              color: Color(0xff8f294f),
              fontSize: 32,
              height: 1.3,
            ),
            children: <TextSpan>[
          TextSpan(
              text: ' the Best Places to Travel',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(.8)))
        ]));
  }
}


class SecondTitle extends StatelessWidget {
  const SecondTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Nearest to you',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'View All',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xff8f294f),
          ),
        ),
      ],
    );
  }
}
class ThirdTitle extends StatelessWidget {
  const ThirdTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Discover Places',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'View All',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xff8f294f),
          ),
        ),
      ],
    );
  }
}