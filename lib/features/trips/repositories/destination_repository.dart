import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trip_planner/features/trips/models/trip.dart';
import 'package:trip_planner/features/trips/repositories/base_repository.dart';

class DestinationRepository extends BaseRepository {
  DestinationRepository({super.firestore, super.auth});

  CollectionReference<Map<String, dynamic>> _destinationsCollection(
    String tripId,
  ) {
    return firestore
        .collection('users')
        .doc(userId)
        .collection('trips')
        .doc(tripId)
        .collection('destinations');
  }

  Stream<List<TripDestination>> watchDestinations(String tripId) {
    return _destinationsCollection(tripId).snapshots().map(
      (snapshot) => snapshot.docs
          .map((doc) => TripDestination.fromFirestore(doc))
          .toList(),
    );
  }

  Future<void> addDestination({
    required String tripId,
    required String name,
    required double latitude,
    required double longitude,
  }) async {
    final destination = TripDestination(
      id: '',
      name: name,
      latitude: latitude,
      longitude: longitude,
    );

    await _destinationsCollection(tripId).add(destination.toFirestore());
  }

  Future<void> deleteDestination({
    required String tripId,
    required String destinationId,
  }) async {
    await _destinationsCollection(tripId).doc(destinationId).delete();
  }

  Future<void> toggleVisited({
    required String tripId,
    required TripDestination destination,
  }) async {
    await _destinationsCollection(
      tripId,
    ).doc(destination.id).update({'isVisited': !destination.isVisited});
  }
}
