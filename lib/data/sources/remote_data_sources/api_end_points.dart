class ApiEndPoints {
  static String image(String imageUrl) =>
      'https://image.tmdb.org/t/p/w500$imageUrl';
  static String youtubeTumbnail(String youtubeKey) =>
      'https://img.youtube.com/vi/$youtubeKey/0.jpg';
}
