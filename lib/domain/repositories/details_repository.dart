import 'package:dartz/dartz.dart' show Either, Right, Left;
import 'package:funda_details_component/data/details_remote_data_source.dart';
import 'package:funda_details_component/domain/entities/unit.dart';

abstract class DetailsRepositoryContract {
  Future<Either<String, Unit>> loadUnit(String apiKey, String unitId);
}

class DetailsRepository extends DetailsRepositoryContract {
  // On a more elaborated scenario this should be injected by a DI
  final DetailsRemoteDataSourceContract _remote = DetailsRemoteDataSource();

  DetailsRepository();

  @override
  Future<Either<String, Unit>> loadUnit(String apiKey, String unitId) async {
    try {
      final response = await _remote.load(apiKey, unitId);
      return Right(response);
    } on Exception catch (e) {
      // A bit of a workaround to not create a new type of Exception
      return Left(e.toString().replaceFirst('Exception: ', ''));
    }
  }
}
