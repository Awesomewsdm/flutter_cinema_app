class Movie {
  Movie({
    required this.name,
    required this.image,
    required this.imdbRating,
    required this.genre,
  });
  final String name;
  final String image;
  final String imdbRating;
  final String genre;
}

final movies = [
  Movie(
    imdbRating: "7.9",
    genre: "Mystery",
    name: 'Everything everywhere all at once',
    image:
        'https://images.wallpapersden.com/image/download/official-everything-everywhere-all-at-once-hd_bWdtbmuUmZqaraWkpJRmZ2lnrWdrbW0.jpg',
  ),
  Movie(
    name: 'All quiet on the western front',
    image:
        'https://i.pinimg.com/originals/c4/b7/36/c4b736cbbc8caea7179a513ca9dd717b.jpg',
    genre: 'War',
    imdbRating: '7.0',
  ),
  Movie(
    name: 'Top gunn - Maverick',
    image:
        'https://images.hdqwalls.com/download/2022-top-gun-maverick-zz-1080x1920.jpg',
    genre: 'Action',
    imdbRating: '8.0',
  ),
  Movie(
    name: 'Avatar - The way of water',
    image:
        'https://i.pinimg.com/originals/5d/82/af/5d82afebae0e8e8e8e21b0a48e418c4b.jpg',
    genre: 'Action',
    imdbRating: '9.2',
  ),
  Movie(
    name: 'Elvis',
    image:
        'https://images.wallpapersden.com/image/download/elvis-movie-2022_bWdlaGeUmZqaraWkpJRmZ21lrWdmZ2U.jpg',
    genre: 'Drama',
    imdbRating: '6.7',
  ),
  Movie(
    name: 'John Wick 4',
    image: 'https://image.tmdb.org/t/p/w500//vLuWnBnCRTU8WxihMGkebcbu5f.jpg',
    genre: 'Action',
    imdbRating: '9.0',
  ),
  Movie(
    name: 'Black Panther',
    image: 'https://wallpaperaccess.com/full/96632.jpg',
    genre: 'Action',
    imdbRating: '8.7',
  ),
  Movie(
      name: "Spider-Man: Homecoming",
      image:
          "https://images.wallpapersden.com/image/download/2017-spiderman-homecoming-study-time_amxrZW2UmZqaraWkpJRsZ2WtZmdtZQ.jpg",
      genre: 'Action',
      imdbRating: ''),
  Movie(
    name: 'Turning red',
    image:
        'https://i.pinimg.com/originals/4b/fd/1e/4bfd1e6e2a0fc4a557ddcea4fba07207.jpg',
    genre: 'Animation',
    imdbRating: '6.9',
  ),
  Movie(
    name: 'Mario',
    image:
        'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/cbd5baf7-3bcb-4f2c-8dcc-1ce7e072f0ff/dfesla4-f7534f9d-c295-472b-94f1-cf68955cb080.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2NiZDViYWY3LTNiY2ItNGYyYy04ZGNjLTFjZTdlMDcyZjBmZlwvZGZlc2xhNC1mNzUzNGY5ZC1jMjk1LTQ3MmItOTRmMS1jZjY4OTU1Y2IwODAuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.CHpQirburPYQhQ3qOshAfGVANcaArx-fvPChr6LwXOs',
    genre: 'Animation',
    imdbRating: '8.0',
  ),
  Movie(
    name: 'Puss in boots',
    image:
        'https://images.wallpapersden.com/image/download/puss-in-boots-the-last-wish-movie_bWlobmiUmZqaraWkpJRmZmdqrWdpaGs.jpg',
    genre: 'Animation',
    imdbRating: '7.0',
  ),
  Movie(
    name: 'An Irish goodbye',
    image:
        'https://m.media-amazon.com/images/M/MV5BZjRkMDEwNWMtNjA2OS00Njk1LWIzMWItZDk3ODc0MTcwYTQ5XkEyXkFqcGdeQXVyMTI0OTgwMTUw._V1_.jpg',
    genre: 'Drama',
    imdbRating: '4.0',
  ),
  Movie(
      name: "The Mandalorian",
      image:
          "https://images.wallpapersden.com/image/download/official-poster-of-the-mandalorian-season-3_bW5qaGuUmZqaraWkpJRsZ2WtZmdtZQ.jpg",
      genre: 'Sci-Fi',
      imdbRating: '8.9'),
  Movie(
    name: 'Tell it like a woman',
    image: 'https://i.ytimg.com/vi/emqDeF7dtcc/movieposter_en.jpg',
    genre: 'Drama',
    imdbRating: '7.0',
  ),
  Movie(
      name: "Death On The Nile",
      image:
          "https://images.wallpapersden.com/image/download/death-on-the-nile-2022-movie_bWZnZmaUmZqaraWkpJRsZ2WtZmdtZQ.jpg",
      genre: 'Mystery',
      imdbRating: '7.0'),
  Movie(
    name: 'House Of The Dragon',
    image:
        'https://images.wallpapersden.com/image/download/house-of-the-dragon-hd-season-1_bWtrbWeUmZqaraWkpJRsZ2WtZmdtZQ.jpg',
    genre: 'Action',
    imdbRating: '7.0',
  ),
  Movie(
    name: 'Babylon',
    image:
        'https://assets.gadgets360cdn.com/pricee/assets/product/202212/babylon_poster_1672374652.jpeg',
    genre: 'Drama',
    imdbRating: '8.6',
  ),
  Movie(
    name: 'The Batman',
    image:
        'https://trailers.apple.com/trailers/wb/the-batman/images/poster-large.jpg?lastmod=1',
    genre: 'Action',
    imdbRating: '7.0',
  ),
  Movie(
    name: 'Ant-Man And The Wasp Quantumania',
    image:
        'https://images.wallpapersden.com/image/download/ant-man-and-the-wasp-quantumania-marvel-movie_bmVpZ26UmZqaraWkpJRsZ2WtZmdtZQ.jpg',
    genre: 'Action',
    imdbRating: '7.0',
  ),
  Movie(
      name: "Avatar The Way of Water",
      image:
          "https://images.wallpapersden.com/image/download/5k-avatar-the-way-of-water-poster_bW5lbWyUmZqaraWkpJRsZ2WtZmdtZQ.jpg",
      genre: 'Action',
      imdbRating: '9.5'),
  Movie(
      name: "Fast and Furious Hobbs & Shaw",
      image:
          "https://images.wallpapersden.com/image/download/fast-and-furious-hobbs-and-shaw_a2tmZWWUmZqaraWkpJRsZ2WtZmdtZQ.jpg",
      genre: 'Action',
      imdbRating: '8.5'),
  Movie(
      name: "Spiderman Homecoming ",
      image:
          "https://images.wallpapersden.com/image/download/spiderman-homecoming-climax_amxrZmWUmZqaraWkpJRsZ2WtZmdtZQ.jpg",
      genre: 'Action',
      imdbRating: '8.9')
];
