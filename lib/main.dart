import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedSize = "";
  late Color selectedColor;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _showSnackbar(String size) {
    final snackBar = SnackBar(content: Text('Selected Size: $size'));
    _scaffoldKey.currentState?.showBottomSheet(snackBar as WidgetBuilder);
  }

  void _onButtonTap(String size, Color color) {
    setState(() {
      selectedSize = size;
      selectedColor = color;
    });
    _showSnackbar(size);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Size Selector'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () => _onButtonTap('S', Colors.grey),
                    style: ButtonStyle(
                      backgroundColor: selectedSize == 'S'
                          ? MaterialStateProperty.all(Colors.orange)
                          : MaterialStateProperty.all(Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('S',style: TextStyle(
                          fontSize: 20
                      ),),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () => _onButtonTap('M', Colors.grey),
                    style: ButtonStyle(
                      backgroundColor: selectedSize == 'M'
                          ? MaterialStateProperty.all(Colors.orange)
                          : MaterialStateProperty.all(Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('M',style: TextStyle(
                          fontSize: 20
                      ),),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () => _onButtonTap('L', Colors.grey),
                    style: ButtonStyle(
                      backgroundColor: selectedSize == 'L'
                          ? MaterialStateProperty.all(Colors.orange)
                          : MaterialStateProperty.all(Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('L',style: TextStyle(
                          fontSize: 20
                      ),),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () => _onButtonTap('XL', Colors.grey),
                    style: ButtonStyle(
                      backgroundColor: selectedSize == 'XL'
                          ? MaterialStateProperty.all(Colors.orange)
                          : MaterialStateProperty.all(Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('XL',style: TextStyle(
                          fontSize: 20
                      ),),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),

                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[

                  ElevatedButton(
                    onPressed: () => _onButtonTap('XXL', Colors.grey),
                    style: ButtonStyle(
                      backgroundColor: selectedSize == 'XXL'
                          ? MaterialStateProperty.all(Colors.orange)
                          : MaterialStateProperty.all(Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('XXL',style: TextStyle(
                          fontSize: 20
                      ),),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),

                  ElevatedButton(
                    onPressed: () => _onButtonTap('XXXL', Colors.grey),
                    style: ButtonStyle(
                      backgroundColor: selectedSize == 'XXXL'
                          ? MaterialStateProperty.all(Colors.orange)
                          : MaterialStateProperty.all(Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('XXXL',style: TextStyle(
                          fontSize: 20
                      ),),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
