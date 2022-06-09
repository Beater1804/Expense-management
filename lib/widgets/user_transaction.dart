import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      't1',
      'New Tee',
      700250,
      DateTime.now(),
    ),
    Transaction(
      't2',
      'New Polo',
      900450,
      DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, int txAmount) {
    final newTx = new Transaction(
      DateTime.now().toString(),
      txTitle,
      txAmount,
      DateTime.now(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
