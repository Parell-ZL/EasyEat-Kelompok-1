import 'package:flutter/material.dart';

import 'package:easy_eat/models/ads_model.dart';
import 'package:easy_eat/models/foodStall_model.dart';

import 'package:easy_eat/static/navigation_route.dart';

import 'package:easy_eat/widgets/home/ads_card_widget.dart';
import 'package:easy_eat/widgets/home/stall_card_widget.dart';
import 'package:easy_eat/widgets/home/welcome_text_widget.dart';
import 'package:easy_eat/widgets/home/search_bar_widget.dart';
import 'package:easy_eat/widgets/home/category_widget.dart';

Widget homePage(context, controller) {
  return CustomScrollView(
    slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeTextWidget(
                onTap: () => Navigator.pushNamed(
                    context, NavigationRoute.cartRoute.name)),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SearchBarWidget(),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Pesan Sekarang",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SF-Pro'),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: adsList.length,
                  itemBuilder: (context, index) {
                    final ads = adsList[index];
                    return AdsCardWidget(ads: ads, onTap: () {});
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CategoryWidget(),
            ),
          ],
        ),
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final stall = foodstallList[index];
            return StallCardWidget(
              stall: stall,
              onTap: () {
                Navigator.pushNamed(context, NavigationRoute.detailRoute.name,
                    arguments: stall);
              },
            );
          },
          childCount: foodstallList.length,
        ),
      ),
      SliverToBoxAdapter(child: SizedBox(height: 50))
    ],
  );
}
