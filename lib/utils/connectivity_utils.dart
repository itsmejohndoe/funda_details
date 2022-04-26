import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityUtils {
  final _connectivity = Connectivity();

  Future<bool> hasConnectivity() async {
    final status = await _connectivity.checkConnectivity();
    return status != ConnectivityResult.none;
  }
}
