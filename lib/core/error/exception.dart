// Will be thrown whenever we receive an error code from a remote data source (a server)
class ServerException implements Exception {
  // The following code can be included if we want to pass around an explanatory message about the exception.
  //final String message;

  //ServerException(this.message);
}

// Will be thrown whenever an error occurs in the local data source (the cached data). 
class CacheException implements Exception {}