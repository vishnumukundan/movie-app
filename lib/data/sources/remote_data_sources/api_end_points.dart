import 'package:movie_app/data/sources/remote_data_sources/constatnts.dart';
import 'package:movie_app/domain/usecase/apiKey.dart';

class Language {
  static const String english = 'en';
  static const String tamil = 'ta';
  static const String malayalam = 'ml';
  static const String hindi = 'hi';
}

class ApiEndPoints {
  static String trendingMovieAllWeek =
      '$kBaseUrl/trending/movie/week?api_key=$apiKey';
  static String trendingMovieToday =
      '$kBaseUrl/trending/movie/day?api_key=$apiKey';
  static String popularMovies =
      '$kBaseUrl/movie/popular?api_key=$apiKey&language=en-US';
  static String popularTv =
      '$kBaseUrl/tv/popular?api_key=$apiKey&language=en-US';
  static String movieDetils(movieId) =>
      '$kBaseUrl/movie/$movieId?api_key=$apiKey&append_to_response=videos,casts,reviews';
  static String movieCast(movieId) =>
      '$kBaseUrl/movie/$movieId/credits?api_key=$apiKey&language=en-US';
  static String personDetails(personId) =>
      '$kBaseUrl/person/$personId?api_key=$apiKey';
  static String personMovies(personId) =>
      '$kBaseUrl/discover/movie?api_key=$apiKey&sort_by=popularity.desc&with_cast=$personId';
  static String upcomingMovies(date, lang) =>
      '$kBaseUrl/discover/movie?api_key=$apiKey&sort_by=primary_release_date.asc&page=1&primary_release_date.gte=$date&with_original_language=$lang';
  static String movieGenres = '$kBaseUrl/genre/movie/list?api_key=$apiKey';
  static String popularPersons = '$kBaseUrl/person/popular?api_key=$apiKey';
  static String moviesByGenre(genre, lang) =>
      '$kBaseUrl/discover/movie?api_key=$apiKey&sort_by=popularity.desc&page=1&with_genres=$genre&with_original_language=$lang';

  //
  static String popularMoviesWithOriginalLanguage(lang, fromDate, toDate) =>
      '$kBaseUrl/discover/movie?api_key=$apiKey&sort_by=popularity.desc&page=1&primary_release_date.gte=$fromDate&primary_release_date.lte=$toDate&with_original_language=$lang';
}

enum ImageWidth { w92, w154, w185, w342, w500, w780, original }

class ApiDataFetching {
  static String image(String imageUrl, ImageWidth width) {
    if (width == ImageWidth.w92) {
      return '$kImageBaseUrl/w92$imageUrl';
    }
    if (width == ImageWidth.w154) {
      return '$kImageBaseUrl/w154$imageUrl';
    }
    if (width == ImageWidth.w185) {
      return '$kImageBaseUrl/w185$imageUrl';
    }
    if (width == ImageWidth.w342) {
      return '$kImageBaseUrl/w342$imageUrl';
    }
    if (width == ImageWidth.w500) {
      return '$kImageBaseUrl/w500$imageUrl';
    }
    if (width == ImageWidth.w780) {
      return '$kImageBaseUrl/w780$imageUrl';
    }
    return '$kImageBaseUrl/original$imageUrl';
  }

  static String youtubeTumbnail(String youtubeKey) =>
      '$kYoutubeImageBaseUrl$youtubeKey/0.jpg';
}
