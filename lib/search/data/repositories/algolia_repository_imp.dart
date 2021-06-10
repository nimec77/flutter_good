import 'package:algolia/algolia.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_good/search/search.dart';
import 'package:flutter_good/search/use_cases/ports/providers/cache_provider.dart';
import 'package:flutter_good/search/use_cases/ports/providers/search_provider.dart';

const kIndex = 'users';

class AlgoliaRepositoryImp implements TextRepository {
  AlgoliaRepositoryImp(this.searchProvider, this.cacheProvider);

  final SearchProvider searchProvider;
  final CacheProvider cacheProvider;

  @override
  Stream<Either<TextDataFailure, List<TextData>>> search(String query,
      {ErrorTypes errorTypes = ErrorTypes.noError}) async* {
    final key = '$kIndex$query';
    final cachedJson = cacheProvider.read(key);
    if (cachedJson.isNotEmpty) {
      yield* _snapshotToTextsData(searchProvider.snapshotFromJson(kIndex, cachedJson));
    }
    final snapshots = await searchProvider.search(kIndex, query);

    if (!snapshots.hasHits) {
      yield right([]);
      return;
    }
    await cacheProvider.write(key, snapshots.toMap());

    yield* _snapshotToTextsData(snapshots);
  }

  Stream<Either<TextDataFailure, List<TextData>>> _snapshotToTextsData(AlgoliaQuerySnapshot snapshots) async* {
    yield right(snapshots.hits
        .map((e) => TextData('${e.data['firstName']} ${e.data['middleName']} ${e.data['lastName']}', DateTime.now()))
        .toList());
  }
}
