import 'package:flutter/material.dart';

import '../model/travel.dart';
import '../ui/detail_page.dart';

class TravelList extends StatelessWidget {
  const TravelList({
    Key? key,
    required this.size,
    required List<Travel> travelList,
  })  : _travelList = travelList,
        super(key: key);

  final Size size;
  final List<Travel> _travelList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      height: size.height * .4,
      child: ListView.builder(
          itemCount: _travelList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: GestureDetector(
                onTap: () => print('Tapped!'),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        child: Image.asset(
                          _travelList[index].imageUrl[1],
                          fit: BoxFit.fill,
                          height: 60.0,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _travelList[index].name,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _travelList[index].location,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color(0xff686771),
                              ),
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/star.png',
                                    width: 30,
                                  ),
                                  Text(
                                    _travelList[index].rating.toString(),
                                    style: TextStyle(fontSize: 16.0),
                                  )
                                ]),
                          ],
                        )
                      ],
                    ))
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class NearestTravelList extends StatelessWidget {
  const NearestTravelList({
    Key? key,
    required this.size,
    required List<Travel> nearestTravelList,
  })  : _nearestTravelList = nearestTravelList,
        super(key: key);

  final Size size;
  final List<Travel> _nearestTravelList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      height: size.height * .4,
      child: ListView.builder(
          itemCount: _nearestTravelList.length,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailView(id: index)));
                },
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(24),
                        ),
                        child:
                            Image.asset(_nearestTravelList[index].imageUrl[0])),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 0, 0, .5),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            )),
                        child: Text(
                          _nearestTravelList[index].distance.toString() +
                              "km away",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

