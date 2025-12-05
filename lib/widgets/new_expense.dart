import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();

  final _amountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();

    _amountController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            maxLength: 50,
            decoration: InputDecoration(label: Text('Title')),
            controller: _titleController,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  maxLength: 50,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(prefixText: '\$ ', label: Text('Amount')),
                  controller: _amountController,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Selected Date'),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.calendar_month)),
                  ],
                ),
              ),
            ],
          ),
          TextField(
            maxLength: 50,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(prefixText: '\$ ', label: Text('Amount')),
            controller: _amountController,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                  print(_amountController.text);
                },
                child: const Text('Save Expense'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
