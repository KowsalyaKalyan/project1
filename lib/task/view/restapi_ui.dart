import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../allpackages.dart';

class RestapiUi extends StatefulWidget {
  RestapiUi({Key? key}) : super(key: key);

  @override
  State<RestapiUi> createState() => _RestapiUiState();
}

class _RestapiUiState extends State<RestapiUi> {
  final Restcontroller restcontroller = Get.put(Restcontroller());
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  void initState() {
    super.initState();
    restcontroller.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return restcontroller.data.isEmpty
          ? CircularProgressIndicator()
          : ListView.builder(
              itemCount: restcontroller.data.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    print('click');
                  },
                  child: Container(
                    height: 100,
                    child: Card(
                      elevation: 0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 20),
                            height: 80,
                            width: 100,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        restcontroller.data[index].avatar))),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ID:${restcontroller.data[index].id.toString()}',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'FirstName:${restcontroller.data[index].firstName}',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'LastName:${restcontroller.data[index].lastName}',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'email:${restcontroller.data[index].email}',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              });
    });
  }
}

class DestinationScreen extends StatelessWidget {
  String payload;

  DestinationScreen({required this.payload});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
          padding: EdgeInsets.all(25),
          child: Text(payload,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ))),
    ));
  }
}
