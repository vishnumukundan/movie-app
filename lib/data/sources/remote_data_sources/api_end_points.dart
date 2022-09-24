import 'package:movie_app/data/sources/remote_data_sources/constatnts.dart';
import 'package:movie_app/domain/usecase/apiKey.dart';

class ApiEndPoints {
  static String image(String imageUrl) => '$kImageBaseUrl$imageUrl';
  static String youtubeTumbnail(String youtubeKey) =>
      '$kYoutubeImageBaseUrl$youtubeKey/0.jpg';
  static String trendingMovieAllWeek(String youtubeKey) =>
      '$kBaseUrl/trending/movie/week?api_key=$apiKey';
}
