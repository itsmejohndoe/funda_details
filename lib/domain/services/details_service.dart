import 'package:dartz/dartz.dart' show Either;
import 'package:funda_details_component/domain/entities/unit.dart';
import 'package:funda_details_component/domain/repositories/details_repository.dart';

class DetailsService {
  // On a more elaborated scenario this should be injected by a DI
  final DetailsRepositoryContract _detailsRepository = DetailsRepository();

  // This method only encapsulates the call to repository. On some complex scenarios this could be different,
  // since the service can have access to multiple repositories if needed.
  Future<Either<String, Unit>> loadUnit(String apiKey, String unitId) {
    return _detailsRepository.loadUnit(apiKey, unitId);
  }
}
