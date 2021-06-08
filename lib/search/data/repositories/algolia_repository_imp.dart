import 'package:dartz/dartz.dart';
import 'package:flutter_good/search/search.dart';
import 'package:flutter_good/search/use_cases/ports/providers/search_provider.dart';

class AlgoliaRepositoryImp implements TextRepository {
  AlgoliaRepositoryImp(this.searchProvider);

  final SearchProvider searchProvider;

  @override
  Stream<Either<TextDataFailure, List<TextData>>> search(String query,
      {ErrorTypes errorTypes = ErrorTypes.noError}) async* {
    final snapshots = await searchProvider.search('users', query);

    if (!snapshots.hasHits) {
      yield right([]);
      return;
    }

    yield right(snapshots.hits
        .map((e) => TextData("${e.data['firstName']} ${e.data['lastName']} ${e.data['middleName']}", DateTime.now()))
        .toList());
  }
}
