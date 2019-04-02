import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // AspectRatio(
          //   aspectRatio: 3.0/2.0,
          //   child: Container(
          //     color: Color.fromRGBO(3, 54, 255, 1.0),
          //   ),
          // )
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200.0,
              minWidth: 200.0
            ),
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              child: Icon(Icons.poll, size: 64.0, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;
  IconBadge(this.icon, {this.size = 32.0});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}


class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // children: <Widget>[
        //   IconBadge(Icons.grade),
        //   IconBadge(Icons.airplanemode_active, size: 64.0,),
        //   IconBadge(Icons.poll)
        // ],
        children: <Widget>[
          Stack(
            alignment: Alignment(0.5, 0.5),
            children: <Widget>[
              SizedBox(
                width: 200.0,
                height: 300.0,
                child: Container(
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: Container(
                  alignment: Alignment(0.3, 0.4),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    // borderRadius: BorderRadius.circular(8.0),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(7, 102, 255, 1.0),
                        Color.fromRGBO(3, 54, 255, 1.0),
                      ]
                    )
                  ),
                  child: Icon(Icons.airplanemode_active,
                      color: Colors.white, size: 32.0),
                ),
              ),
              Positioned(
                right: 20.0,
                top: 20.0,
                child: Icon(Icons.airplanemode_active,
                      color: Colors.white, size: 32.0),
              )
            ],
          ),
        ],
      ),
    );
  }
}