import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Center(
        child: ElevatedButton(
          onPressed: (){
            print('Transaction page');
          },
          child: Text('Send Money'),
        ),
      ),
    );
  }
}
