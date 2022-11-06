import 'package:ecomm_cloths/screens/detail/widget/add_cart.dart';
import 'package:ecomm_cloths/screens/detail/widget/clothes_info.dart';
import 'package:ecomm_cloths/screens/detail/widget/detail_app_bar.dart';
import 'package:ecomm_cloths/screens/detail/widget/size_list.dart';
import 'package:ecomm_cloths/screens/home/widget/clothes_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../models/clothes.dart';

class DetailPage extends StatelessWidget {
  final Clothes clothes;
  DetailPage(this.clothes);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailAppBar(clothes),
            ClothesInfo(clothes),
            SizeList(),
            AddCart(clothes)
          ],
        ),
      ),
    );
  }
}
