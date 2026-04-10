import 'dart:io';
import 'dart:typed_data';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_planner/features/trips/models/trip.dart';
import 'package:trip_planner/features/trips/repositories/trip_repository.dart';

part 'trip_provider.g.dart';

@riverpod
TripRepository tripRepository(Ref ref) {
  return TripRepository();
}

@riverpod
class TripsNotifier extends _$TripsNotifier {
  @override
  Stream<List<TripItem>> build() {
    return ref.watch(tripRepositoryProvider).watchTrips();
  }

  Future<void> addTrip({required String name, String? description}) async {
    await ref
        .read(tripRepositoryProvider)
        .addTrip(name: name, description: description);
  }

  Future<void> deleteTrip(String tripId) async {
    await ref.read(tripRepositoryProvider).deleteTrip(tripId);
  }

  Future<void> uploadTripImage({
    required String tripId,
    required File imageFile,
  }) async {
    await ref
        .read(tripRepositoryProvider)
        .uploadTripImage(tripId: tripId, imageFile: imageFile);
  }

  Future<void> uploadTripImageBytes({
    required String tripId,
    required Uint8List bytes,
    required String mimeType,
  }) async {
    await ref
        .read(tripRepositoryProvider)
        .uploadTripImageBytes(tripId: tripId, bytes: bytes, mimeType: mimeType);
  }
}

@riverpod
Stream<TripItem?> tripDetails(Ref ref, String tripId) {
  return ref.watch(tripRepositoryProvider).watchTrip(tripId);
}
