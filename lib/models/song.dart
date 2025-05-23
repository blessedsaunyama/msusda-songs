class Song {
  final String id;
  final String title;
  final String lyrics;
  final String? audioUrl;

  Song({
    required this.id,
    required this.title,
    required this.lyrics,
    this.audioUrl,
  });

  factory Song.fromJson(Map<String, dynamic> json) {
    return Song(
      id: json['id'],
      title: json['title'],
      lyrics: json['lyrics'],
      audioUrl: json['audio_url'],
    );
  }
}
