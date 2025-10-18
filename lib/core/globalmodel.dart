
class Globalmodel {
  final String title;
  final String author;
  final String id;
  final String image;
  Globalmodel({
    required this.title,
    required this.author,
    required this.id,
    required this.image,
  });
factory Globalmodel.fromJson(Map<String, dynamic> json) {
  return Globalmodel(
    title: json['title'] ?? 'No Title',
    author: json['authors'] ?? 'Unknown Author',
    id: json['id'] ?? 'No ID',
    image: '',
  );
}
}