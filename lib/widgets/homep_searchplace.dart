import 'package:flutter/material.dart';

class SearchPlaces extends StatelessWidget {
  const SearchPlaces({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/search.png',
              width: 24,
            ),
            SizedBox(
              width: 5,
            ),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Search Places'),
              ),
            ),
            Image.asset(
              'assets/images/option.png',
              width: 24,
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.1),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
