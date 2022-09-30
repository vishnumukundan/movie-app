import 'package:movie_app/data/sources/remote_data_sources/constatnts.dart';
import 'package:movie_app/domain/usecase/apiKey.dart';

class ApiEndPoints {
  static String trendingMovieAllWeek =
      '$kBaseUrl/trending/movie/week?api_key=$apiKey';
  static String trendingMovieToday =
      '$kBaseUrl/trending/movie/day?api_key=$apiKey';
  static String popularMovies =
      '$kBaseUrl/movie/popular?api_key=$apiKey&language=en-US';
  static String popularTv =
      '$kBaseUrl/tv/popular?api_key=$apiKey&language=en-US';
}

class ApiDataFetching {
  static String image(String imageUrl) => '$kImageBaseUrl$imageUrl';
  static String youtubeTumbnail(String youtubeKey) =>
      '$kYoutubeImageBaseUrl$youtubeKey/0.jpg';
}
