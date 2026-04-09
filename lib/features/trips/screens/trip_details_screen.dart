import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:trip_planner/features/trips/providers/trip_expense_provider.dart';
import 'package:trip_planner/features/trips/providers/trip_provider.dart';
import 'package:trip_planner/features/trips/widgets/add_expense_bottom_sheet.dart';
import 'package:trip_planner/features/trips/widgets/expense_card.dart';

class TripDetailsScreen extends ConsumerWidget {
  final String tripId;

  const TripDetailsScreen({super.key, required this.tripId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tripExpenses = ref.watch(tripExpenseProvider(tripId));
    final tripDetails = ref.watch(tripDetailsProvider(tripId));

    return Scaffold(
      appBar: AppBar(
        title: tripDetails.when(
          data: (trip) => Text("${trip?.name ?? "Szczegóły podróży"}"),
          error: (error, _) => Text("Błąd: $error"),
          loading: () => CircularProgressIndicator(),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await ref.read(tripsProvider.notifier).deleteTrip(tripId);
              if (context.mounted) context.pop();
            },
            icon: Icon(Icons.delete),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (_) => AddExpenseBottomSheet(tripId: tripId),
        ),
        child: const Icon(Icons.add),
      ),
      body: tripExpenses.when(
        data: (expenses) => expenses.isEmpty
            ? Center(child: Text("brak"))
            : ListView.builder(
                itemCount: expenses.length,
                itemBuilder: (context, index) {
                  final expense = expenses[index];
                  return ExpenseCard(expense: expense, tripId: tripId);
                },
              ),
        error: (error, _) => Center(child: Text("error: $error")),
        loading: () => Center(child: const CircularProgressIndicator()),
      ),
      bottomNavigationBar: tripExpenses.whenData((exp) {
        final total = exp.fold(0.0, (prev, e) => prev + e.amount);
        final paid = exp
            .where((e) => e.isPaid)
            .fold(0.0, (prev, e) => prev + e.amount);
        final remaining = total - paid;

        return BottomAppBar(
          child: Row(
            children: [
              Expanded(
                child: Text("Suma kosztów: ${total.toStringAsFixed(2)} zł"),
              ),
              Expanded(child: Text("Zapłacone: ${paid.toStringAsFixed(2)} zł")),
              Expanded(
                child: Text("Pozostało: ${remaining.toStringAsFixed(2)} zł"),
              ),
            ],
          ),
        );
      }).value,
    );
  }
}
