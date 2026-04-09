import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trip_planner/features/trips/models/trip.dart';
import 'package:trip_planner/features/trips/repositories/base_repository.dart';

class ExpenseRepository extends BaseRepository {
  ExpenseRepository({super.firestore, super.auth});

  CollectionReference<Map<String, dynamic>> _expensesCollection(String tripId) {
    return firestore
        .collection('users')
        .doc(userId)
        .collection('trips')
        .doc(tripId)
        .collection('expenses');
  }

  Stream<List<TripExpense>> watchExpenses(String tripId) {
    return _expensesCollection(tripId).snapshots().map(
      (snapshot) =>
          snapshot.docs.map((doc) => TripExpense.fromFirestore(doc)).toList(),
    );
  }

  Future<void> addExpense({
    required String tripId,
    required String name,
    String? description,
    required double amount,
    DateTime? date,
  }) async {
    final expense = TripExpense(
      id: '',
      name: name,
      description: description,
      amount: amount,
      date: date,
    );
    await _expensesCollection(tripId).add(expense.toFirestore());
  }

  Future<void> deleteExpense({
    required String tripId,
    required String expenseId,
  }) async {
    await _expensesCollection(tripId).doc(expenseId).delete();
  }

  Future<void> togglePaid({
    required String tripId,
    required TripExpense expense,
  }) async {
    await _expensesCollection(
      tripId,
    ).doc(expense.id).update({'isPaid': !expense.isPaid});
  }

  // Stream<List<TripExpense>> watchTrips() {
  //   return _expensesCollection
  //       .orderBy('createdAt', descending: true)
  //       .snapshots()
  //       .map(
  //         (snapshot) => snapshot.docs
  //             .map((doc) => TripExpense.fromFirestore(doc))
  //             .toList(),
  //       );
  // }
}
