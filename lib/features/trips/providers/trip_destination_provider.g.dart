// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_destination_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(destinationRepository)
const destinationRepositoryProvider = DestinationRepositoryProvider._();

final class DestinationRepositoryProvider
    extends
        $FunctionalProvider<
          DestinationRepository,
          DestinationRepository,
          DestinationRepository
        >
    with $Provider<DestinationRepository> {
  const DestinationRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'destinationRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$destinationRepositoryHash();

  @$internal
  @override
  $ProviderElement<DestinationRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DestinationRepository create(Ref ref) {
    return destinationRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DestinationRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DestinationRepository>(value),
    );
  }
}

String _$destinationRepositoryHash() =>
    r'3ff2507eb98d5a817b47fe99e724c8e6db6ecaa5';

@ProviderFor(DestinationNotifier)
const destinationProvider = DestinationNotifierFamily._();

final class DestinationNotifierProvider
    extends
        $StreamNotifierProvider<DestinationNotifier, List<TripDestination>> {
  const DestinationNotifierProvider._({
    required DestinationNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'destinationProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$destinationNotifierHash();

  @override
  String toString() {
    return r'destinationProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  DestinationNotifier create() => DestinationNotifier();

  @override
  bool operator ==(Object other) {
    return other is DestinationNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$destinationNotifierHash() =>
    r'1e097a0ca0187fa1df3d48b261676f4f5cf12d02';

final class DestinationNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          DestinationNotifier,
          AsyncValue<List<TripDestination>>,
          List<TripDestination>,
          Stream<List<TripDestination>>,
          String
        > {
  const DestinationNotifierFamily._()
    : super(
        retry: null,
        name: r'destinationProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DestinationNotifierProvider call(String tripId) =>
      DestinationNotifierProvider._(argument: tripId, from: this);

  @override
  String toString() => r'destinationProvider';
}

abstract class _$DestinationNotifier
    extends $StreamNotifier<List<TripDestination>> {
  late final _$args = ref.$arg as String;
  String get tripId => _$args;

  Stream<List<TripDestination>> build(String tripId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<AsyncValue<List<TripDestination>>, List<TripDestination>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<TripDestination>>,
                List<TripDestination>
              >,
              AsyncValue<List<TripDestination>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
