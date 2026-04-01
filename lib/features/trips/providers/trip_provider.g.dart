// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TripsNotifier)
const tripsProvider = TripsNotifierProvider._();

final class TripsNotifierProvider
    extends $StreamNotifierProvider<TripsNotifier, List<TripItem>> {
  const TripsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tripsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tripsNotifierHash();

  @$internal
  @override
  TripsNotifier create() => TripsNotifier();
}

String _$tripsNotifierHash() => r'7042214a90c04b260ec854882f87393bf6133f02';

abstract class _$TripsNotifier extends $StreamNotifier<List<TripItem>> {
  Stream<List<TripItem>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<TripItem>>, List<TripItem>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<TripItem>>, List<TripItem>>,
              AsyncValue<List<TripItem>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
