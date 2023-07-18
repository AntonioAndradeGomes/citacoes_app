import 'package:get/get.dart';

import 'create_quote_controller.dart';

class CreateQuoteBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateQuoteController>(
      () => CreateQuoteController(),
    );
  }
}
