import 'package:flutter/material.dart';
import 'package:tenk_robot/Classes/DrawerItems.dart';

class DrawerItemContainer extends StatefulWidget {
  final DrawerItems item;
  DrawerItemContainer ({this.item});
  @override
  _DrawerItemContainerState createState() => _DrawerItemContainerState(item: item);
}

class _DrawerItemContainerState extends State<DrawerItemContainer> {
  final DrawerItems item;
  _DrawerItemContainerState ({this.item});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          onTap: (){
            if (item.pageName != 'Home'){
              Navigator.of(context).pop();
              Navigator.of (context).push(
                MaterialPageRoute(
                  builder:(context)=>  item.pagePushed,
                )
              );
            }
            else if (item.pageName == 'Home')
              Navigator.of(context).pop();
          },
          child: Row(
            children: <Widget>[
              item.pageIcon,
              SizedBox(width: 30,),
              Text(
                item.pageName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
