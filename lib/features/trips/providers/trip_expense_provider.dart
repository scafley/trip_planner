import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_planner/features/trips/models/trip.dart';

part 'trip_expense_provider.g.dart';

@riverpod
class TripsExpenseNotifier extends _$TripsExpenseNotifier {
  CollectionReference<Map<String, dynamic>> _expensesCollection(String tripId) {
    final userId = FirebaseAuth.instance.currentUser!.uid;

    return FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .collection('trips')
        .doc(tripId)
        .collection('expenses');
  }

  @override
  Stream<List<TripExpense>> build(String tripId) {
    return _expensesCollection(tripId)
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => TripExpense.fromFirestore(doc))
              .toList(),
        );
  }

  Future<void> addExpense({
    required String tripId,
    required String name,
    required double amount,
    DateTime? date,
  }) async {
    final expense = TripExpense(id: '', name: name, amount: amount, date: date);

    await _expensesCollection(tripId).add(expense.toFirestore());
  }
}
