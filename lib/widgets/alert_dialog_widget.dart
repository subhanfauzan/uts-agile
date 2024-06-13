import 'package:app_money/models/transaction_with_category.dart';
import 'package:flutter/material.dart';

class AlertDialogWidget extends StatefulWidget {
  const AlertDialogWidget({super.key, this.transactionsWithCategory});
  final TransactionWithCategory? transactionsWithCategory;

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  late TransactionWithCategory? data;

  @override
  void initState() {
    if (widget.transactionsWithCategory != null) {
      setState(() {
        data = widget.transactionsWithCategory!;
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Detail Transaksi'),
      content: Visibility(
        visible: data != null,
        replacement: Center(
          child: CircularProgressIndicator(),
        ),
        child: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                  '${data != null ? 'Nominal : ${data!.transaction.amount}' : 'No description available'}'),
              Text(
                  '${data != null ? 'Kategori : ${data!.transaction.category_id}' : 'No description available'}'),
              Text(
                  '${data != null ? 'Detail : ${data!.transaction.description}' : 'No description available'}'),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
