import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trip_planner/features/trips/providers/trip_expense_provider.dart';

class TripDetailsScreen extends ConsumerWidget {
  final String tripId;

  const TripDetailsScreen({super.key, required this.tripId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tripExpenses = ref.watch(tripsExpenseProvider(tripId));
    return Scaffold(
      appBar: AppBar(title: const Text('Szczegóły podróży')),
      body: tripExpenses.when(
        data: (expenses) => expenses.isEmpty
            ? Center(child: Text("brak"))
            : ListView.builder(
                itemCount: expenses.length,
                itemBuilder: (context, index) {
                  final expense = expenses[index];
                  return Text(expense.name);
                },
              ),
        error: (error, _) => Center(child: Text("error: $error")),
        loading: () => Center(child: const CircularProgressIndicator()),
      ),
    );
  }
}
