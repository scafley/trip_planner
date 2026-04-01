import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip.freezed.dart';

@freezed
abstract class TripItem with _$TripItem {
  const factory TripItem({
    required String id,
    required String name,
    String? description,
    required DateTime createdAt,
    String? imageUrl,
  }) = _TripItem;

  factory TripItem.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return TripItem(
      id: doc.id,
      name: data['name'] as String,
      description: data['description'] as String?,
      createdAt: (data['createdAt'] as Timestamp).toDate(),
      imageUrl: data['imageUrl'] as String?,
    );
  }
}

@freezed
abstract class TripExpense with _$TripExpense {
  const factory TripExpense({
    required String id,
    required String name,
    String? description,
    required double amount,
    @Default(false) bool isPaid,
    DateTime? date,
  }) = _TripExpense;

  factory TripExpense.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return TripExpense(
      id: doc.id,
      name: data['name'] as String,
      description: data['description'] as String?,
      amount: (data['amount'] as num).toDouble(),
      isPaid: data['isPaid'] as bool? ?? false,
      date: data['date'] != null ? (data['date'] as Timestamp).toDate() : null,
    );
  }
}

extension TripItemX on TripItem {
  Map<String, dynamic> toFirestore() => {
    'name': name,
    'description': description,
    'createdAt': Timestamp.fromDate(createdAt),
    'imageUrl': imageUrl,
  };
}

extension TripExpenseX on TripExpense {
  Map<String, dynamic> toFirestore() => {
    'name': name,
    'description': description,
    'amount': amount,
    'isPaid': isPaid,
    'date': date != null ? Timestamp.fromDate(date!) : null,
  };
}
