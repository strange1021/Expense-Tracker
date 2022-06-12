// Transaction is not a widget. It's a normal class/object.

class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

// Constructor
  Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
  });
}
