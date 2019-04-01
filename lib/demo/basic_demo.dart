import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0
  );
  final String _name = 'jackhui';
  final String _author = 'Rihanna';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('jackhui');
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0
  );
  final String _name = 'jackhui';
  final String _author = 'Rihanna';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('hello, my name is $_name, her name is $_author', 
    textAlign: TextAlign.center,
    style: _textStyle,);
  }
}


class RichTextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0
  );
  final String _name = 'jackhui';
  final String _author = 'Rihanna';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
        text: 'JACKHUI',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100
        ),
        children: [
          TextSpan(
            text: 'micheal',
            style: TextStyle(
              color: Colors.red,
              fontSize: 40.0
            )
          )
        ]
      ) 
    );
  }
}

class ContainerDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0
  );
  final String _name = 'jackhui';
  final String _author = 'Rihanna';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('http://img5.imgtn.bdimg.com/it/u=2889674657,1724941294&fm=200&gp=0.jpg'),
          alignment: Alignment.center,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.yellow, BlendMode.hue)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool),
            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.only(left: 12.0, right: 12.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 23, 141, 1.0),
              border: Border.all(
                width: 3.0,
                style: BorderStyle.solid,
                color: Colors.indigoAccent[400],
              ),
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(60.0),
              //   bottomLeft: Radius.circular(60.0)
              // ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 16.0),
                  color: Colors.lightGreen,
                  blurRadius: 25.0,
                  spreadRadius: -10.0
                )
              ],
              shape: BoxShape.circle,
              // gradient: RadialGradient(
              //   colors: [
              //     Colors.red,
              //     Colors.green
              //   ],
              // )
              gradient: LinearGradient(
                colors: [
                  Colors.indigoAccent[400],
                  Colors.lime
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
          )
        ],
      ),
    );
  }
}