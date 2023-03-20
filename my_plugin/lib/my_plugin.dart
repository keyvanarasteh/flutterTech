
import 'my_plugin_platform_interface.dart';

class MyPlugin {
  Future<String?> getPlatformVersion() {
    return MyPluginPlatform.instance.getPlatformVersion();
  }
}
