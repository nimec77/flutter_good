import 'package:dartz/dartz.dart';
import 'package:flutter_good/search/data/providers/algolia_provider.dart';
import 'package:flutter_good/search/search.dart';

class AlgoliaRepositoryImp implements TextRepository {
  AlgoliaRepositoryImp(this.algoliaProvider);

  final AlgoliaProvider algoliaProvider;

  @override
  Stream<Either<TextDataFailure, List<TextData>>> search(String query,
      {ErrorTypes errorTypes = ErrorTypes.noError}) async* {
    final snapshots = await algoliaProvider.search('users', query);

    if (!snapshots.hasHits) {
      yield right([]);
      return;
    }

    yield right(snapshots.hits
        .map((e) => TextData("${e.data['firstName']} ${e.data['lastName']} ${e.data['middleName']}", DateTime.now()))
        .toList());
  }
}
