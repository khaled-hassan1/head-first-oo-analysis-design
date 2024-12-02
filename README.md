# "Head First Object-Oriented Analysis & Design" (OOA&D)

## From Java To Dart

# Digital Music Store Management System As A Test

## Learning Journey
After completing "Head First Object-Oriented Analysis & Design" (OOA&D), I challenged myself to apply the principles learned by creating a comprehensive object-oriented solution. Initially developed in Java, I converted the project to Dart to deepen my understanding of OOP concepts across different programming languages.

## Project Purpose
This project serves as a practical implementation of object-oriented design principles, demonstrating:
- Application of OOP concepts learned from the book
- Translation of design principles between programming languages
- Hands-on practice with inheritance, encapsulation, and polymorphism

## Overview
A comprehensive Dart-based object-oriented application for managing a digital media inventory system.

## Features
- Object-Oriented Design with inheritance and polymorphism
- Media management (tracks, albums)
- Inventory tracking
- Discount calculation
- Custom exception handling

## Key Classes
- `Media`: Abstract base class for all media types
- `MusicTrack`: Represents individual music tracks
- `Album`: Represents music albums
- `Inventory`: Manages media collection
- `Services`: Utility methods for media operations

## OOP Principles Demonstrated
- Inheritance
- Encapsulation
- Polymorphism
- Abstraction
- Error Handling

## Requirements
- Dart SDK
- Dart test package for unit testing

## Running Tests
```bash
dart test
```

## Usage Example
```dart
void main() {
  final track = MusicTrack(
    title: "Awesome Song",
    artist: "Great Artist",
    price: 1.99,
    releaseYear: 2023,
    duration: Duration(minutes: 4)
  );
  
  final inventory = Inventory();
  inventory.addMedia([track]);
}
```

## Learning Reflections
This project reinforced key OOP concepts:
- The importance of clean, modular design
- Effective use of abstraction
- Implementing robust error handling
- Leveraging language-specific features

## License
Ghaly License
