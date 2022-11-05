import 'package:ecomm_cloths/screens/home/widget/best_sell.dart';
import 'package:ecomm_cloths/screens/home/widget/categories_list.dart';
import 'package:ecomm_cloths/screens/home/widget/clothes_item.dart';
import 'package:ecomm_cloths/screens/home/widget/custom_app_bar.dart';
import 'package:ecomm_cloths/screens/home/widget/new_arrival.dart';
import 'package:ecomm_cloths/screens/home/widget/search_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../models/clothes.dart';
 
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SearchInput(),
                NewArrival(),
                BestSell()
              ]),
        ));
  }
}
