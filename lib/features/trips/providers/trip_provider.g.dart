// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(tripRepository)
const tripRepositoryProvider = TripRepositoryProvider._();

final class TripRepositoryProvider
    extends $FunctionalProvider<TripRepository, TripRepository, TripRepository>
    with $Provider<TripRepository> {
  const TripRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tripRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tripRepositoryHash();

  @$internal
  @override
  $ProviderElement<TripRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TripRepository create(Ref ref) {
    return tripRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TripRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TripRepository>(value),
    );
  }
}

String _$tripRepositoryHash() => r'bcfe05d8084305f06ddac9ce044eef08839a86a9';

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

String _$tripsNotifierHash() => r'29a8446c326499ad148d08c813dd4183e8290935';

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

@ProviderFor(tripDetails)
const tripDetailsProvider = TripDetailsFamily._();

final class TripDetailsProvider
    extends
        $FunctionalProvider<AsyncValue<TripItem?>, TripItem?, Stream<TripItem?>>
    with $FutureModifier<TripItem?>, $StreamProvider<TripItem?> {
  const TripDetailsProvider._({
    required TripDetailsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'tripDetailsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$tripDetailsHash();

  @override
  String toString() {
    return r'tripDetailsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<TripItem?> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<TripItem?> create(Ref ref) {
    final argument = this.argument as String;
    return tripDetails(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is TripDetailsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$tripDetailsHash() => r'4e5c0f85afc4528f57c62d9459d9cf19b342206c';

final class TripDetailsFamily extends $Family
    with $FunctionalFamilyOverride<Stream<TripItem?>, String> {
  const TripDetailsFamily._()
    : super(
        retry: null,
        name: r'tripDetailsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TripDetailsProvider call(String tripId) =>
      TripDetailsProvider._(argument: tripId, from: this);

  @override
  String toString() => r'tripDetailsProvider';
}
