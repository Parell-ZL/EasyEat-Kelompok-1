import 'package:easy_eat/widgets/stall/menu_card_widget.dart';
import 'package:easy_eat/widgets/stall/topFood_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:easy_eat/models/foodStall_model.dart';

import 'package:easy_eat/widgets/stall/stall_profile_widget.dart';

import 'package:easy_eat/widgets/stall/bottom_sheet_widget.dart';

class StallPage extends StatelessWidget {
  final Foodstall foodStall;

  const StallPage({super.key, required this.foodStall});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(239, 239, 232, 1),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color.fromRGBO(239, 239, 232, 1),
            automaticallyImplyLeading: true, // Munculkan back button
            expandedHeight: 0, // AppBar normal (tidak expandable)
            pinned: false, // Tetap visible saat scroll
            floating: true, // Muncul cepat saat scroll up
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.shopping_cart,
                ),
                onPressed: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StallProfile(
                    image: foodStall.image,
                    description: foodStall.description,
                    name: foodStall.name,
                    id: foodStall.id,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Paling Laris di Jam Istirahat",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SF-Pro'),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 220,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: foodStall.topFoods.length,
                      itemBuilder: (context, index) {
                        final tfood = foodStall.topFoods[index];
                        return TopfoodCardWidget(
                          name: tfood.name,
                          price: tfood.price.toString(),
                          image: tfood.frontImage,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Menu",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SF-Pro'),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final food = foodStall.availableFoods[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: MenuCardWidget(
                    food: food,
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          showDragHandle: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(50),
                            ),
                          ),
                          barrierColor: const Color.fromRGBO(26, 23, 22, 0.6),
                          backgroundColor:
                              const Color.fromRGBO(239, 239, 232, 1),
                          context: context,
                          builder: (context) {
                            return BottomSheetWidget(
                              food: food,
                            );
                          });
                    },
                  ),
                );
              },
              childCount: foodStall.availableFoods.length,
            ),
          ),
        ],
      ),
    );
  }
}
