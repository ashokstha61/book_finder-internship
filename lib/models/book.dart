class Book {
  final String id;
  final String title;
  final List<String> authors;
  final String? thumbnail;
  final String? description;
  final String? publishedDate;

  Book({
    required this.id,
    required this.title,
    required this.authors,
    this.thumbnail,
    this.description,
    this.publishedDate,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    final volumeInfo = json['volumeInfo'] as Map<String, dynamic>?;
    final imageLinks = volumeInfo?['imageLinks'] as Map<String, dynamic>?;

    return Book(
      id: json['id'] as String,
      title: volumeInfo?['title'] as String ,
      authors: (volumeInfo?['authors'] as List<dynamic>?)?.cast<String>() ?? [],
      thumbnail: imageLinks?['thumbnail'] as String?,
      description: volumeInfo?['description'] as String?,
      publishedDate: volumeInfo?['publishedDate'] as String?,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'authors': authors.join(', '),
      'thumbnail': thumbnail,
    };
  }
}