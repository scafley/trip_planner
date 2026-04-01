import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_planner/features/trips/models/trip.dart';

part 'trip_provider.g.dart';

@riverpod
class TripsNotifier extends _$TripsNotifier {
  CollectionReference<Map<String, dynamic>> _tripsCollection() {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .collection('trips');
  }

  @override
  Stream<List<TripItem>> build() {
    return _tripsCollection()
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) =>
              snapshot.docs.map((doc) => TripItem.fromFirestore(doc)).toList(),
        );
  }

  void addTrip({required String name, String? description}) async {
    final newTrip = TripItem(
      id: '',
      name: name,
      description: description,
      createdAt: DateTime.now(),
    );

    await _tripsCollection().add(newTrip.toFirestore());
  }

  void deleteTrip(String id) async {
    await _tripsCollection().doc(id).delete();
    //state = state.where((trip) => trip.id != id).toList();
  }
}
