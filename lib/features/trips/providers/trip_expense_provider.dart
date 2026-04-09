import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_planner/features/trips/models/trip.dart';
import 'package:trip_planner/features/trips/repositories/expense_repository.dart';

part 'trip_expense_provider.g.dart';

@riverpod
ExpenseRepository expenseRepository(Ref ref) {
  return ExpenseRepository();
}

@riverpod
class TripExpenseNotifier extends _$TripExpenseNotifier {
  @override
  Stream<List<TripExpense>> build(String tripId) {
    return ref.watch(expenseRepositoryProvider).watchExpenses(tripId);
  }

  Future<void> deleteExpense(String expenseId) async {
    await ref
        .read(expenseRepositoryProvider)
        .deleteExpense(tripId: tripId, expenseId: expenseId);
  }

  Future<void> addExpense({
    required String name,
    required double amount,
    String? description,
    DateTime? date,
  }) async {
    await ref
        .read(expenseRepositoryProvider)
        .addExpense(
          tripId: tripId,
          name: name,
          amount: amount,
          description: description,
          date: date,
        );
  }

  Future<void> togglePaid(TripExpense expense) async {
    await ref
        .read(expenseRepositoryProvider)
        .togglePaid(tripId: tripId, expense: expense);
  }
}
