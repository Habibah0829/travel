import 'package:flutter/material.dart';
import 'package:travel_app/model/travel.dart';

import '../widgets/homep_searchplace.dart';
import '../widgets/homep_subtitle.dart';
import '../widgets/homep_topbutton.dart';
import '../widgets/imglist.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Travel> _travelList = Travel.getTravelItems();
    List<Travel> _nearestTravelList = Travel.getNearestItems();

    return Scaffold(
      appBar: AppBar(
        title: HomeTitle(),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FirstTitle(),
              SearchPlaces(),
              SecondTitle(),
              NearestTravelList(
                  size: size, nearestTravelList: _nearestTravelList),
              SizedBox(
                height: 24,
              ),
              ThirdTitle(),
              TravelList(size: size, travelList: _travelList)
            ],
          ),
        ),
      ),
    );
  }
}
