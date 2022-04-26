import 'package:dio/dio.dart';
import 'package:funda_details_component/domain/entities/unit.dart';
import 'package:funda_details_component/utils/connectivity_utils.dart';

abstract class DetailsRemoteDataSourceContract {
  Future<Unit> load(String apiKey, String unitId);
}

class DetailsRemoteDataSource extends DetailsRemoteDataSourceContract {
  static const _okCode = 200;

  // On a more elaborated scenario this should be injected by a DI
  final _httpRequester = Dio();
  final _connectivityUtils = ConnectivityUtils();

  @override
  Future<Unit> load(String apiKey, String unitId) async {
    final hasConnectivity = await _connectivityUtils.hasConnectivity();
    if (!hasConnectivity) {
      throw Exception('No connection.');
    }

    final response =
        await _httpRequester.get('http://partnerapi.funda.nl/feeds/Aanbod.svc/json/detail/$apiKey/koop/$unitId/');
    if (response.statusCode == _okCode) {
      return Unit.fromJson(response.data);
    } else {
      throw Exception('Error fetching unit.');
    }
  }
}
