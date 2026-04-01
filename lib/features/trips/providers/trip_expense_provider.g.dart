// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_expense_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TripsExpenseNotifier)
const tripsExpenseProvider = TripsExpenseNotifierFamily._();

final class TripsExpenseNotifierProvider
    extends $StreamNotifierProvider<TripsExpenseNotifier, List<TripExpense>> {
  const TripsExpenseNotifierProvider._({
    required TripsExpenseNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'tripsExpenseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$tripsExpenseNotifierHash();

  @override
  String toString() {
    return r'tripsExpenseProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  TripsExpenseNotifier create() => TripsExpenseNotifier();

  @override
  bool operator ==(Object other) {
    return other is TripsExpenseNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$tripsExpenseNotifierHash() =>
    r'5738ee52bf11b60ab1a5ab666052df2874430219';

final class TripsExpenseNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          TripsExpenseNotifier,
          AsyncValue<List<TripExpense>>,
          List<TripExpense>,
          Stream<List<TripExpense>>,
          String
        > {
  const TripsExpenseNotifierFamily._()
    : super(
        retry: null,
        name: r'tripsExpenseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TripsExpenseNotifierProvider call(String tripId) =>
      TripsExpenseNotifierProvider._(argument: tripId, from: this);

  @override
  String toString() => r'tripsExpenseProvider';
}

abstract class _$TripsExpenseNotifier
    extends $StreamNotifier<List<TripExpense>> {
  late final _$args = ref.$arg as String;
  String get tripId => _$args;

  Stream<List<TripExpense>> build(String tripId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref as $Ref<AsyncValue<List<TripExpense>>, List<TripExpense>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<TripExpense>>, List<TripExpense>>,
              AsyncValue<List<TripExpense>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
