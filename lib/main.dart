import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'allpackages.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.purpleAccent[700],
              title: Center(
                child: Text(
                  'RestApi',
                ),
              ),
            ),
            body: RestapiUi()));
  }
}
