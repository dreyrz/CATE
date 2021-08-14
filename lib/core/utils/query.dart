class Query {
  static String recommendedTrackByGenreQueries({
    int limit = 1,
    String market = "US",
    String? seedGenres,
  }) {
    seedGenres = seedGenres != null ? "&" + "seed_genres=$seedGenres" : "";
    return "?limit=$limit&market=$market$seedGenres";
  }
}
