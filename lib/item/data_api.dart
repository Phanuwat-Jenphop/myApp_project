
/*
{
"title": "Spongebob Squarepants",
"year": 1999,
"creator": [
  "Stephen Hillenburg"
],
"rating": "TV-Y",
"genre": [
  "Comedy",
  "Family"
],
"runtime_in_minutes": 23,
"episodes": 272,
"image": "https://nick.mtvnimages.com/uri/mgid:arc:content:nick.com:9cd2df6e-63c7-43da-8bde-8d77af9169c7?quality=0.7",
"id": 1
},
{
"title": "The Simpsons",
"year": 1999,
"creator": [
  "Matt Groening"
],
"rating": "TV-PG",
"genre": [
  "Comedy"
],
"runtime_in_minutes": 22,
"episodes": 684,
"image": "https://m.media-amazon.com/images/M/MV5BYjFkMTlkYWUtZWFhNy00M2FmLThiOTYtYTRiYjVlZWYxNmJkXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SY1000_CR0,0,666,1000_AL_.jpg",
"id": 2
},
*/


class Animations {
  final String? title;
  final int? year;
  final String? rating;
  // final String? creator;
  // final String? genre;
  final int? runtime_in_minutes;
  final int? episodes;
  final String? image;
  final int? id;

  Animations({
    required this.title,
    required this.year,
    required this.rating,
    // required this.creator,
    // required this.genre,
    required this.runtime_in_minutes,
    required this.episodes,
    required this.image,
    required this.id,
  });

  factory Animations.fromJson(Map<String, dynamic> json) {
    // call back to movies
    return Animations(
      title: json['title'],
      year: json['year'],
      rating: json['rating'],
      // creator: json['creator'][],
      // genre: json['genre'],
      runtime_in_minutes: json['runtime_in_minutes'],
      episodes: json['episodes'],
      image: json['image'],
      id: json['id'],
     
    );
  }
}

///--------///--------///--------///--------///--------///--------///
class Movies {
  final int? id;
  final String? title;
  final String? posterURL;
  final String? imdbId;

  Movies({
    
    required this.id,
    required this.title,
    required this.posterURL,
    required this.imdbId,
    
    });

  factory Movies.fromJson(Map<String, dynamic> json) {
    // call back to movies
    return Movies(
      id: json['id'],
      title: json['title'],
      posterURL: json['posterURL'],
      imdbId: json['imdbId'],
    );
  }
}

