import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class CategoriesList extends StatelessWidget {
  final String title;
  CategoriesList(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),),
          Row(
            children: [
              Text("View all", 
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),),
              SizedBox(width: 10,),
              Container(
                padding: EdgeInsets.all(6),
                child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15,),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ) 
            ],
          )
        ],
      ),
    );
  }
}
