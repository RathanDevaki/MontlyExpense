import './widgets/user_transaction.dart';
import 'package:flutter/material.dart';

// You can use a relative import, i.e. `import 'category_route.dart;'` or
// a package import, as shown below.
// More details at http://dart-lang.github.io/linter/lints/avoid_relative_lib_imports.html

/// The function that is called when main.dart is run.
void main() {
  runApp(MyApp());
}

/// This widget is the root of our application.
///
/// The first screen we see is a list [Categories], each of which
/// has a list of [Unit]s.
class MyApp extends StatelessWidget {
  // final List<Transaction> transactions = [] ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      title: 'My Trials',

      home: DemoPage(),
      // CategoryRoute(),
    );
  }
}

class DemoPage extends MyApp {
  //const ({ Key? key }) : super(key: key);
  // static const _textStyle = TextStyle(fontSize: 40, color: Colors.blueAccent);

  final titleController = TextEditingController();
  final nameController = TextEditingController();

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.black87,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    // var _url =    'https://www.filmibeat.com/wimg/desktop/2018/05/ajith-kumar_152541220310.jpg';
    return Scaffold(
      body: Container(
        height: 500,
        width: double.infinity,
        child: ListView(
          children: <Widget>[
            Card(
              elevation: 8.0,
            ),
            UserTransactios(),
          ],
        ),
      ),
    );
  }
}
