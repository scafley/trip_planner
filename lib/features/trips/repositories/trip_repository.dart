import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:trip_planner/features/trips/models/trip.dart';
import 'package:trip_planner/features/trips/repositories/base_repository.dart';

class TripRepository extends BaseRepository {
  TripRepository({super.firestore, super.auth});

  CollectionReference<Map<String, dynamic>> get _tripsCollection =>
      firestore.collection('users').doc(userId).collection('trips');

  Stream<List<TripItem>> watchTrips() {
    return _tripsCollection
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) =>
              snapshot.docs.map((doc) => TripItem.fromFirestore(doc)).toList(),
        );
  }

  Stream<TripItem?> watchTrip(String tripId) {
    return _tripsCollection
        .doc(tripId)
        .snapshots()
        .map((doc) => doc.exists ? TripItem.fromFirestore(doc) : null);
  }

  Future<void> addTrip({required String name, String? description}) async {
    final trip = TripItem(
      id: '',
      name: name,
      description: description,
      createdAt: DateTime.now(),
    );
    await _tripsCollection.add(trip.toFirestore());
  }

  Future<void> deleteTrip(String tripId) async {
    await _tripsCollection.doc(tripId).delete();
  }

  Future<String> uploadTripImage({
    required String tripId,
    required File imageFile,
  }) async {
    final ref = FirebaseStorage.instance.ref().child(
      'users/$userId/trips/$tripId/cover.jpg',
    );

    await ref.putFile(imageFile);
    final url = await ref.getDownloadURL();

    await _tripsCollection.doc(tripId).update({'imageUrl': url});

    return url;
  }
}
