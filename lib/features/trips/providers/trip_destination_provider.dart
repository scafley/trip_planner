import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_planner/features/trips/models/trip.dart';
import 'package:trip_planner/features/trips/repositories/destination_repository.dart';

part 'trip_destination_provider.g.dart';

@riverpod
DestinationRepository destinationRepository(Ref ref) {
  return DestinationRepository();
}

@riverpod
class DestinationNotifier extends _$DestinationNotifier {
  @override
  Stream<List<TripDestination>> build(String tripId) {
    return ref.watch(destinationRepositoryProvider).watchDestinations(tripId);
  }

  Future<void> addDestination({
    required String name,
    required double latitude,
    required double longitude,
  }) async {
    await ref
        .read(destinationRepositoryProvider)
        .addDestination(
          tripId: tripId,
          name: name,
          latitude: latitude,
          longitude: longitude,
        );
  }

  Future<void> deleteDestination({required String destinationId}) async {
    await ref
        .read(destinationRepositoryProvider)
        .deleteDestination(tripId: tripId, destinationId: destinationId);
  }

  Future<void> toggleVisitedDestination({
    required TripDestination destination,
  }) async {
    await ref
        .read(destinationRepositoryProvider)
        .toggleVisited(tripId: tripId, destination: destination);
  }
}
