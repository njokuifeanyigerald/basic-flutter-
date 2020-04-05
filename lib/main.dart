import 'package:flutter/material.dart';

void  main (){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}
class MyApp extends StatefulWidget{
  @override
  _State createState() => new _State();
}
class _State extends State<MyApp>{
//
//  void _onPressed(String value){
//    setState(() {
//      _value  = value;
//    });
//  }
//  void _onPressed(){
//    setState(() {
//      _value  = new DateTime.now().toString();
//    });
//  }
    int _value = 0;
    void _add(){
      setState(() {
        _value++;
      });
    }
  void _substrate(){
    setState(() {
      _value--;
    });
  }
  String _name = 'hello Adaeze';
  void _onPress(){
    setState(() {
      _name  = "my name is Njoku Ifeanyichukwu Gerald";
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('my first flutter app'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_name ),
              new RaisedButton(onPressed: _onPress, child: new Text('click me')),
              new Text('Value =  ${_value} '),
              new IconButton(icon: new Icon(Icons.add), onPressed: _add),
              new IconButton(icon: new Icon(Icons.remove), onPressed: _substrate),
//              new RaisedButton(onPressed: () => _onPressed('my name is Njoku Ifeanyi Gerald chinedum'), child: new Text('clcik me'))
//                new FlatButton(onPressed: _onPressed, child: new Text('click me'),)
            ],
          ),
        ),
      ),
    );
  }
}