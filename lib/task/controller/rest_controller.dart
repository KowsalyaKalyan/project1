import '../../allpackages.dart';

class Restcontroller extends GetxController {
  var data = <Data>[].obs;

  var isloading = true;

  getData() async {
    final result = await service().httpFunc();
    if (result != null) {
      data.value = result.data;
      print(result.data[0]);
    }
  }
}
