// Section 3: Patterns

// Singleton Pattern:
// Implement a Logger class in Dart that ensures only one instance exists. Add a method log(String message) to print messages.
// Observer Pattern:
// Create a WeatherData class that tracks temperature. Implement the observer pattern so multiple Display classes can subscribe to WeatherData and print updates when the temperature changes.
// Strategy Pattern:
// Implement a payment system where the customer can pay using CreditCard, PayPal, or Cash. Use the strategy pattern to encapsulate the payment methods.
// Section 4: Real-World Scenarios

// Refactoring Exercise:
// Below is a poorly designed Dart code snippet. Refactor it to follow OOP principles:
// void main() {
//   print("Drawing Circle");
//   print("Drawing Rectangle");
//   print("Drawing Triangle");
// }
// Case Study: Rental Service
// Design a rental system for cars and bikes. Include:
// A base class Vehicle with fields like id, brand, and rentalPrice.
// Subclasses Car and Bike with additional fields (e.g., seats for Car, gearType for Bike).
// A RentalService class with methods to add, list, and rent vehicles.
// Ensure the system is extendable for future types of vehicles.
// Bonus Question

// Imagine a scenario where a large portion of a codebase relies on tight coupling between classes. What issues might arise, and how would you refactor the code to improve flexibility and maintainability?
