import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SizeList extends StatefulWidget {
  @override
  State<SizeList> createState() => _SizeListState();
}

class _SizeListState extends State<SizeList> {
  final List<String> sizeList = ["S", "M", "L", "XL", "XXL"];
  var _currentSize = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    _currentSize = index;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: _currentSize == index ? 
                    Theme.of(context).accentColor : Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 2, color: Colors.grey.withOpacity(0.1) )
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Text(
                    sizeList[index],
                    style: TextStyle(
                        color: _currentSize == index
                            ? Theme.of(context).primaryColor
                            : Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          separatorBuilder: (_, index) => SizedBox(
                width: 10,
              ),
          itemCount: sizeList.length),
    );
  }
}
