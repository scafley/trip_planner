import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trip_planner/features/trips/models/trip.dart';
import 'package:trip_planner/features/trips/providers/trip_expense_provider.dart';

class ExpenseCard extends ConsumerWidget {
  final TripExpense expense;
  final String tripId;

  const ExpenseCard({super.key, required this.expense, required this.tripId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.receipt),
        title: Text(expense.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            if (expense.description != null) Text(expense.description!),

            if (expense.date != null)
              Text(
                '${expense.date!.day}.${expense.date!.month}.${expense.date!.year}',
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
          ],
        ),

        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${expense.amount.toStringAsFixed(2)} zł',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 8),
            Switch(
              value: expense.isPaid,
              onChanged: (value) {
                ref
                    .read(tripExpenseProvider(tripId).notifier)
                    .togglePaid(expense);
              },
            ),
          ],
        ),
      ),
    );
  }
}
