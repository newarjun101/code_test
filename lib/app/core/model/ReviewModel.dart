class ReviewModel {
  int id;
  String name;
  String comment;
  String date;
  List<String> image;
  int rating;

  ReviewModel( {required this.id, required this.name, required this.comment, required this.date, required this.image, required this.rating});
}
