class FavoriteBook {
  final String id;
  final String title;
  final String authors;
  final String thumbnail;

  FavoriteBook({required this.id, required this.title, required this.authors, required this.thumbnail});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'authors': authors,
      'thumbnail': thumbnail,
    };
  }

  factory FavoriteBook.fromMap(Map<String, dynamic> map) {
  return FavoriteBook(
    id: map['id']?.toString() ?? '', // Handle potential nulls
    title: map['title']?.toString() ?? '',
    authors: map['authors']?.toString() ?? '',
    thumbnail: map['thumbnail']?.toString() ?? '',
  );
}
}