import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/menu.png',
          width: 30,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/pin.png',
              width: 20,
            ),
            const SizedBox(
              width: 2,
            ),
            const Text(
              'London',
              style: TextStyle(
                color: Color(0xff8f294f),
                fontSize: 16.0,
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: Color(0xff8f294f),
            )
          ],
        ),
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          child: Image.asset(
            'assets/images/profile.png',
            width: 40,
            height: 40,
          ),
        ),
      ],
    );
  }
}