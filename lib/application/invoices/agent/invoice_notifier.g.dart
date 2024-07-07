// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$invoiceNotifierHash() => r'174bdc6cec2affba37326bbd1591bef4fcb1a9ec';

/// See also [InvoiceNotifier].
@ProviderFor(InvoiceNotifier)
final invoiceNotifierProvider = AsyncNotifierProvider<InvoiceNotifier,
    Either<InvoiceFailure, Invoice>>.internal(
  InvoiceNotifier.new,
  name: r'invoiceNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$invoiceNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$InvoiceNotifier = AsyncNotifier<Either<InvoiceFailure, Invoice>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
