import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  void handleSubmit() {
    print(_titleController.text);
    print(_amountController.text);
  }

  void closeModal() {
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(label: Text('Title')),
          ),
          TextField(
            controller: _amountController,
            decoration:
                const InputDecoration(label: Text('Amount'), prefixText: '\$ '),
            keyboardType: TextInputType.number,
          ),
          Row(
            children: [
              TextButton(
                onPressed: closeModal,
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: handleSubmit,
                child: const Text('Save expenses'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
