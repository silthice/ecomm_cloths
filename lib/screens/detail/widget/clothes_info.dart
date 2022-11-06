import 'package:ecomm_cloths/models/clothes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ClothesInfo extends StatelessWidget {
  final Clothes clothes;
  ClothesInfo(this.clothes);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("${clothes.title} ${clothes.subtitle}", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),),
              Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      shape: BoxShape.circle),
                  child: Icon( 
                    Icons.favorite,
                    color: Colors.red,
                    size: 15,
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 10),
            child: Row(
              children: [
                Icon(Icons.star_border, color: Theme.of(context).primaryColor,),
                Text("4.5 (2.7k)", style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
          RichText(text: TextSpan(
            children: [
              TextSpan(
                text: "Gucci Oversize Hoodie, a hoodie with Gucci style\n made of soft silk fabric and oversized\n model according to todays time",
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.7), height: 1.5
                )
              ),
              TextSpan(
                text: " Read more",
                 style: TextStyle(
                color: Theme.of(context).primaryColor
              )),
            ]
          ))
        ],
      ),
    );
  }
}
