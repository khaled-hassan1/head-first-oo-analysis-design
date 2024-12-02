/*
OOP Exam for Digital Music Store Management System

Objective:
Design a comprehensive object-oriented solution for a digital music store 
that demonstrates your understanding of OOP principles in Dart.

Requirements:

1. Base Classes and Inheritance:
   - Create a base class `Media` with the following properties:
     * title (String)
     * artist (String)
     * price (double)
     * releaseYear (int)

   - Create two derived classes:
     a) `MusicTrack` (inherits from Media)
        * Additional property: duration (Duration)
        * Additional method: `formatDuration()` to return a readable duration string

     b) `Album` (inherits from Media)
        * Additional property: List<MusicTrack> tracks
        * Additional method: `getTotalDuration()` to calculate total album duration

2. Encapsulation:
   - Implement proper encapsulation for all classes
   - Use private fields where appropriate
   - Provide getters and setters with validation
     * Ensure price cannot be negative
     * Ensure title and artist are not empty
     * Ensure release year is reasonable (between 1900 and current year)

3. Polymorphism:
   - Implement a method `displayInfo()` in the `Media` base class
   - Override this method in `MusicTrack` and `Album` to provide specific details
   - Create a method to calculate a discount based on the media type

4. Advanced Features:
   - Create an `Inventory` class to manage media items
     * Methods to add, remove, and list media
     * Method to calculate total inventory value
     * Method to find media by various criteria (title, artist, etc.)

5. Error Handling:
   - Implement custom exceptions:
     * `InvalidMediaException` for invalid media creation
     * `InventoryException` for inventory-related errors

Constraints:
- Use Dart's OOP features extensively
- Demonstrate understanding of constructors, including named constructors
- Show proper use of inheritance and method overriding
- Implement type-safe code

Bonus Challenges:
- Implement a method to generate a unique ID for each media item
- Create a method to compare two media items
- Add a feature to track media popularity or sales

Evaluation Criteria:
- Correct implementation of OOP principles
- Code readability and organization
- Proper use of Dart-specific OOP features
- Comprehensive error handling
- Creativity in solving the problem

Instructions:
1. Implement the classes as described above
2. Create a `main()` function to demonstrate the functionality
3. Show how different types of media can be created, managed, and manipulated

Good luck! Take your time to design a clean, object-oriented solution.
*/

// Your implementation goes here

import 'package:test/test.dart';

void main() {
  group('Services Tests', () {
    test('formatDuration formats correctly', () {
      final duration = Duration(minutes: 35, seconds: 12);
      final formattedDuration = Services.formatDuration(duration);
      expect(formattedDuration, equals("00:35:12"));
    });

    test('calculateDiscount applies correct discount for books', () {
      final originalPrice = 20.0;
      final discountedPrice = Services.calculateDiscount(originalPrice, MediaType.book);
      expect(discountedPrice, equals(18.0));
    });
  });

  group('MusicTrack Tests', () {
    test('MusicTrack displays correct info', () {
      final track = MusicTrack(
        title: "Test Track",
        artist: "Test Artist",
        price: 1.99,
        releaseYear: 2023,
        duration: Duration(minutes: 4, seconds: 30),
      );
      expect(track.title, equals("Test Track"));
      expect(track.artist, equals("Test Artist"));
      expect(track.price, equals(1.99));
      expect(track.releaseYear, equals(2023));
      expect(track.duration, equals(Duration(minutes: 4, seconds: 30)));
    });
  });

  group('Inventory Tests', () {
    test('Add, search, and calculate total inventory', () {
      final inventory = Inventory();
      final track = MusicTrack(
        title: "Inventory Track",
        artist: "Inventory Artist",
        price: 2.99,
        releaseYear: 2022,
        duration: Duration(minutes: 3),
      );

      inventory.addMedia([track]);
      final searchedMedia = inventory.searchItem([track]);
      expect(searchedMedia, isNotNull);
      expect(searchedMedia?.length, equals(1));

      final total = inventory.calculateTotal();
      expect(total, equals(2.99));
    });

    test('Remove media from inventory', () {
      final inventory = Inventory();
      final track = MusicTrack(
        title: "Removable Track",
        artist: "Removable Artist",
        price: 3.99,
        releaseYear: 2021,
        duration: Duration(minutes: 5),
      );

      inventory.addMedia([track]);
      inventory.removeMedia(track);
      final total = inventory.calculateTotal();
      expect(total, equals(0.0));
    });
  });
}

class Services {
  static String formatDuration(Duration duration) {
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final hour = duration.inHours.toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$hour:$minutes:$seconds';
  }

  static double calculateDiscount(double originalPrice, MediaType type) {
    double discountRate;
    switch (type) {
      case MediaType.book:
        discountRate = 0.10;
        break;
      case MediaType.game:
        discountRate = 0.15;
        break;
      case MediaType.music:
        discountRate = 0.05;
        break;
      case MediaType.video:
        discountRate = 0.20;
        break;
      default:
        discountRate = 0.0;
    }
    final discountAmount = originalPrice * discountRate;
    final finalPrice = originalPrice - discountAmount;
    return finalPrice;
  }
}

enum MediaType { book, video, music, game }

abstract class Media {
  final String _title, _artist;
  double? _price;
  final int _releaseYear;

  Media({
    required String title,
    required String artist,
    required double price,
    required int releaseYear,
  })  : _title = title,
        _artist = artist,
        _releaseYear = releaseYear {
    if (price < 0.0) {
      throw InvalidMediaException("Price cannot be negative.");
    }
    if (releaseYear < 1900 || releaseYear > DateTime.now().year) {
      throw InvalidMediaException(
          "Release year must be between 1900 and the current year.");
    }
    _price = price;
  }

  String? get title => _title.isNotEmpty ? _title : null;

  String? get artist => _artist.isNotEmpty ? _artist : null;

  double? get price => _price;

  int? get releaseYear => _releaseYear;

  void displayInfo();

  bool match(List<Media> search) {
    for (Media element in search) {
      if (element.title == _title || element.artist == _artist) {
        return true;
      }
    }
    return false;
  }
}

class MusicTrack extends Media {
  final Duration _duration;

  MusicTrack(
      {required Duration duration,
      required super.title,
      required super.artist,
      required super.price,
      required super.releaseYear})
      : _duration = duration;

  Duration get duration => _duration;

  @override
  void displayInfo() {
    print(
        'Title: ${title}\nArtist: ${artist}\nRelease Year: ${releaseYear}\nPrice: \$${price}\nDuration: ${Services.formatDuration(duration)}\n');
  }
}

class Album extends Media {
  final List<MusicTrack> _tracks;

  Album(
      {required super.title,
      required super.artist,
      required super.price,
      required super.releaseYear,
      required List<MusicTrack> tracks})
      : _tracks = tracks;
  //   {
  // if (_tracks.isEmpty) {
  //   throw new InvalidMediaException("Album must have at least one track.");
  // }

  List<MusicTrack> get tracks => [..._tracks];

  Duration getTotalDuration() {
    return _tracks.fold(Duration.zero,
        (previousValue, musicTrack) => previousValue + musicTrack.duration);
  }

  @override
  void displayInfo() {
    _tracks.forEach(
      (musicTrack) {
        print(
            'Title: ${musicTrack.title}\nArtist: ${musicTrack.artist}\nRelease Year: ${musicTrack.releaseYear}\nPrice: \$${musicTrack.price}\n');
      },
    );
  }
}

class Inventory {
  List<Media> _listMedia = [];

  void addMedia(List<Media> media) {
    _listMedia.addAll(media);
  }

  void removeMedia(Media media) {
    _listMedia.remove(media);
  }

  double calculateTotal() {
    double total = 0.0;
    for (Media media in _listMedia) {
      total += media.price!;
    }
    return total;
  }

  List<Media>? searchItem(List<Media> searchMedia) {
    List<Media> matchingList = [];
    for (Media media in searchMedia) {
      if (!media.match(matchingList)) {
        matchingList.add(media);
      }
    }
    return matchingList.isNotEmpty ? matchingList : null;
  }
}

class InventoryException implements Exception {
  final String message;

  InventoryException(this.message);

  @override
  String toString() => "InventoryException: $message";
}

class InvalidMediaException implements Exception {
  final String message;

  InvalidMediaException(this.message);

  @override
  String toString() => "InvalidMediaException: $message";
}
