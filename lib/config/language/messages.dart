


import 'package:get/get.dart';

import 'en_US.dart';
import 'vi_VN.dart';

class Messages extends Translations {

  @override
  Map<String, Map<String, String>> get keys => {
        'vi_VN': vi_VN,
        'en_US': en_US,
       
      };
}
