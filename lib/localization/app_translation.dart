import 'package:get/get.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'flutter-boiler-plate': 'Flutter Boiler Plate',
          'hello': 'Hello 👋🏻',
          'welcome-back': 'Welcome Back 😊',
          'post': 'Post',
        },
        'hi_IN': {
          'flutter-boiler-plate': 'Flutter बॉयलर प्लेट',
          'hello': 'नमस्ते 👋🏻',
          'welcome-back': 'वापसी पर स्वागत है 😊',
          'post': 'पोस्ट',
        }
      };
}
