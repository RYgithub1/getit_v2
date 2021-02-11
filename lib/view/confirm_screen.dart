import 'package:flutter/material.dart';
import 'package:toast/toast.dart';




class ConfirmScreen extends StatefulWidget {
  @override
  _ConfirmScreenState createState() => _ConfirmScreenState();
}




class _ConfirmScreenState extends State<ConfirmScreen> {
  /// [Scaffold共存: GlobalKeyを持たせないとエラー]
  final GlobalKey<ScaffoldState> __scaffoldStateGlobalKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// [keykeykeykeykeykeykeykeykeykeykeykey]
      key: __scaffoldStateGlobalKey,
      /// [keykeykeykeykeykeykeykeykeykeykeykey]

      appBar: AppBar(
        title: Text("Confirm?"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.games),
            onPressed: null,
          ),
        ],
      ),

      body: Center(
        child: RaisedButton(
          onPressed: _openSnapBar,
          child: Text('FYI', style: TextStyle(fontSize: 16)),
        ),
      ),
    );
  }



  void _openSnapBar() {
    __scaffoldStateGlobalKey.currentState.showSnackBar(
      SnackBar(
        content: Text('Special Discount'),
        backgroundColor: Colors.yellow[200],
        elevation: 4,
        duration: Duration(seconds: 3),
        action: SnackBarAction(
          label: 'Here',
          onPressed: () {
            Navigator.pop(context);
            Toast.show(
              "Sent a message",
              context,
              duration: Toast.LENGTH_LONG,
              gravity:  Toast.BOTTOM,
            );
          },
        ),
      ),
    );
  }

}