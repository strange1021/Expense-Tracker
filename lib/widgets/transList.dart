import 'package:flutter/material.dart';
import '../models/trans.dart';
import 'package:intl/intl.dart';

class TransacList extends StatefulWidget {
  const TransacList({Key? key}) : super(key: key);

  @override
  State<TransacList> createState() => _TransacListState();
}

class _TransacListState extends State<TransacList> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 70.16,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Daily Groceries',
      amount: 196,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransaction.map((tx) {
        return Card(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  // Both the syntaxes below convert another type into string type.

                  // $ sign is used for interpolation(concatenate strings).

                  // tx.amount.toString(),

                  //'${tx.amount}',

                  // Backslash behind a pre-defined entity convert that into normal thing.

                  '\$ ${tx.amount}',

                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tx.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat.yMMMd().format(tx.date),
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  )
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
