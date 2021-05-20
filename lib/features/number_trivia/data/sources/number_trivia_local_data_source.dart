import '../models/number_trivia_model.dart';

// With this specification/contract we remain independent of third party classes/tools/APIs like SharedPreferences.
// We also pretend that the communication with the database (cache) is done asynchronously, even if it's not.
// In this way, we are able to change the specific tools/APIs we use without too much effort
abstract class NumberTriviaLocalDataSource {
  /// Gets the cached [NumberTriviaModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.
  Future<NumberTriviaModel> getLastNumberTrivia();

  Future<void> cacheNumberTrivia(NumberTriviaModel triviaToCache);
}