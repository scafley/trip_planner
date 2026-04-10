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
    @Default(false) bool isCompleted,
    DateTime? startDate,
    DateTime? endDate,
  }) = _TripItem;

  factory TripItem.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return TripItem(
      id: doc.id,
      name: data['name'] as String,
      description: data['description'] as String?,
      createdAt: (data['createdAt'] as Timestamp).toDate(),
      imageUrl: data['imageUrl'] as String?,
      isCompleted: data['isCompleted'] as bool? ?? false,
      startDate: data['startDate'] != null
          ? (data['startDate'] as Timestamp).toDate()
          : null,
      endDate: data['endDate'] != null
          ? (data['endDate'] as Timestamp).toDate()
          : null,
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

@freezed
abstract class TripDestination with _$TripDestination {
  const factory TripDestination({
    required String id,
    required String name,
    required double latitude,
    required double longitude,
    @Default(false) bool isVisited,
  }) = _TripDetination;

  factory TripDestination.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;

    return TripDestination(
      id: doc.id,
      name: data['name'] as String,
      latitude: (data['latitude'] as num).toDouble(),
      longitude: (data['longitude'] as num).toDouble(),
      isVisited: data['isVisited'] as bool? ?? false,
    );
  }
}

extension TripDestinatioX on TripDestination {
  Map<String, dynamic> toFirestore() => {
    'name': name,
    'latitude': latitude,
    'longitude': longitude,
    'isVisited': isVisited,
  };
}
