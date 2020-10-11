///
//  Generated code. Do not modify.
//  source: unite.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'unite.pb.dart' as $0;
export 'unite.pb.dart';

class UniteClient extends $grpc.Client {
  static final _$start = $grpc.ClientMethod<$0.ConnInfo, $0.ConnInfo>(
      '/unite.Unite/Start',
      ($0.ConnInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ConnInfo.fromBuffer(value));
  static final _$stream = $grpc.ClientMethod<$0.Packet, $0.Packet>(
      '/unite.Unite/Stream',
      ($0.Packet value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Packet.fromBuffer(value));
  static final _$stop = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/unite.Unite/Stop',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  UniteClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.ConnInfo> start($0.ConnInfo request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$start, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.Packet> stream($async.Stream<$0.Packet> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$stream, request, options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.Empty> stop($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$stop, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class UniteServiceBase extends $grpc.Service {
  $core.String get $name => 'unite.Unite';

  UniteServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ConnInfo, $0.ConnInfo>(
        'Start',
        start_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ConnInfo.fromBuffer(value),
        ($0.ConnInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Packet, $0.Packet>(
        'Stream',
        stream,
        true,
        true,
        ($core.List<$core.int> value) => $0.Packet.fromBuffer(value),
        ($0.Packet value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'Stop',
        stop_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.ConnInfo> start_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ConnInfo> request) async {
    return start(call, await request);
  }

  $async.Future<$0.Empty> stop_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return stop(call, await request);
  }

  $async.Future<$0.ConnInfo> start($grpc.ServiceCall call, $0.ConnInfo request);
  $async.Stream<$0.Packet> stream(
      $grpc.ServiceCall call, $async.Stream<$0.Packet> request);
  $async.Future<$0.Empty> stop($grpc.ServiceCall call, $0.Empty request);
}
