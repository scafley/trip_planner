import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:trip_planner/features/trips/models/trip.dart';
import 'package:trip_planner/features/trips/providers/trip_expense_provider.dart';

class AddExpenseBottomSheet extends ConsumerStatefulWidget {
  final String tripId;
  const AddExpenseBottomSheet({super.key, required this.tripId});

  @override
  ConsumerState<AddExpenseBottomSheet> createState() =>
      _AddExpenseBottomSheetState();
}

class _AddExpenseBottomSheetState extends ConsumerState<AddExpenseBottomSheet> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _amountController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  DateTime? _selectedDate;

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    await ref
        .read(tripExpenseProvider(widget.tripId).notifier)
        .addExpense(
          name: _nameController.text.trim(),
          description: _descriptionController.text.trim().isEmpty
              ? null
              : _descriptionController.text.trim(),
          amount: double.parse(
            _amountController.text.trim().replaceAll(',', '.'),
          ),
          date: _selectedDate,
        );

    if (mounted) context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
        top: 24,
        bottom: MediaQuery.of(context).viewInsets.bottom + 24,
      ),
      child: Form(
        key: _formKey,

        child: ListView(
          children: [
            Text(
              'Nowa część wyprawy',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            TextFormField(
              validator: (v) {
                return v == null || v.trim().isEmpty ? "Wpisz nazwę" : null;
              },
              decoration: const InputDecoration(
                labelText: 'Nazwa *',
                border: OutlineInputBorder(),
              ),
              controller: _nameController,
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: 'Opis',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _amountController,
              decoration: const InputDecoration(
                labelText: 'Koszt',
                border: OutlineInputBorder(),
              ),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              validator: (v) {
                if (v == null || v.trim().isEmpty) return 'Podaj kwotę';
                final parsed = double.tryParse(v.trim().replaceAll(',', '.'));
                if (parsed == null || parsed <= 0)
                  return 'Podaj prawidłową kwotę';
                return null;
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_today),
              title: Text(
                _selectedDate == null
                    ? 'Dodaj datę (opcjonalnie)'
                    : '${_selectedDate!.day}.${_selectedDate!.month}.${_selectedDate!.year}',
              ),
              onTap: () async {
                final picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2030),
                );
                if (picked != null) setState(() => _selectedDate = picked);
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _submit, child: const Text('Dodaj')),
          ],
        ),
      ),
    );
  }
}
