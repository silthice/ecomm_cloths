import 'package:ecomm_cloths/screens/home/widget/categories_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BestSell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoriesList("Best of Sell"),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 25),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset("assets/images/best1.png", width: 80,),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Miniso Woman Oversized", style: TextStyle(
                           fontWeight: FontWeight.bold,
                           height: 1.5, 
                          ),),
                          Text("T-shirt", style: TextStyle(
                           fontWeight: FontWeight.bold,
                           height: 1.5, 
                          ),),
                          Text("\$39.00", style: TextStyle(
                           fontWeight: FontWeight.bold,
                           height: 1.5, 
                           color: Theme.of(context).primaryColor
                          ),),

                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      shape: BoxShape.circle
                    ),
                    child: Icon(Icons.favorite, color: Colors.red, size: 15,)))
              ],
            ),
          )
          ],
        
      ),
    );
  }
}
 