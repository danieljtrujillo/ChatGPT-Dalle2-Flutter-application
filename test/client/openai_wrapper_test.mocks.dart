// Mocks generated by Mockito 5.4.1 from annotations
// in chat_gpt_sdk/test/client/openai_wrapper_test.dart.
// Do not manually edit this file.

// @dart=2.19

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:chat_gpt_sdk/src/client/exception/base_error_wrapper.dart'
    as _i4;
import 'package:chat_gpt_sdk/src/client/openai_client.dart' as _i5;
import 'package:chat_gpt_sdk/src/logger/logger.dart' as _i2;
import 'package:chat_gpt_sdk/src/model/cancel/cancel_data.dart' as _i6;
import 'package:dio/dio.dart' as _i8;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i7;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeLogger_0 extends _i1.SmartFake implements _i2.Logger {
  _FakeLogger_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFuture_1<T1> extends _i1.SmartFake implements _i3.Future<T1> {
  _FakeFuture_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBaseErrorWrapper_2 extends _i1.SmartFake
    implements _i4.BaseErrorWrapper {
  _FakeBaseErrorWrapper_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [OpenAIClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockOpenAIClient extends _i1.Mock implements _i5.OpenAIClient {
  @override
  _i2.Logger get log => (super.noSuchMethod(
        Invocation.getter(#log),
        returnValue: _FakeLogger_0(
          this,
          Invocation.getter(#log),
        ),
        returnValueForMissingStub: _FakeLogger_0(
          this,
          Invocation.getter(#log),
        ),
      ) as _i2.Logger);
  @override
  set log(_i2.Logger? _log) => super.noSuchMethod(
        Invocation.setter(
          #log,
          _log,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i3.Future<T> get<T>(
    String? url, {
    required T Function(Map<String, dynamic>)? onSuccess,
    required void Function(_i6.CancelData)? onCancel,
    bool? returnRawData = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [url],
          {
            #onSuccess: onSuccess,
            #onCancel: onCancel,
            #returnRawData: returnRawData,
          },
        ),
        returnValue: _i7.ifNotNull(
              _i7.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #get,
                  [url],
                  {
                    #onSuccess: onSuccess,
                    #onCancel: onCancel,
                    #returnRawData: returnRawData,
                  },
                ),
              ),
              (T v) => _i3.Future<T>.value(v),
            ) ??
            _FakeFuture_1<T>(
              this,
              Invocation.method(
                #get,
                [url],
                {
                  #onSuccess: onSuccess,
                  #onCancel: onCancel,
                  #returnRawData: returnRawData,
                },
              ),
            ),
        returnValueForMissingStub: _i7.ifNotNull(
              _i7.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #get,
                  [url],
                  {
                    #onSuccess: onSuccess,
                    #onCancel: onCancel,
                    #returnRawData: returnRawData,
                  },
                ),
              ),
              (T v) => _i3.Future<T>.value(v),
            ) ??
            _FakeFuture_1<T>(
              this,
              Invocation.method(
                #get,
                [url],
                {
                  #onSuccess: onSuccess,
                  #onCancel: onCancel,
                  #returnRawData: returnRawData,
                },
              ),
            ),
      ) as _i3.Future<T>);
  @override
  _i3.Stream<T> getStream<T>(
    String? url, {
    required T Function(Map<String, dynamic>)? onSuccess,
    required void Function(_i6.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getStream,
          [url],
          {
            #onSuccess: onSuccess,
            #onCancel: onCancel,
          },
        ),
        returnValue: _i3.Stream<T>.empty(),
        returnValueForMissingStub: _i3.Stream<T>.empty(),
      ) as _i3.Stream<T>);
  @override
  _i3.Future<T> delete<T>(
    String? url, {
    required T Function(Map<String, dynamic>)? onSuccess,
    required void Function(_i6.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [url],
          {
            #onSuccess: onSuccess,
            #onCancel: onCancel,
          },
        ),
        returnValue: _i7.ifNotNull(
              _i7.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #delete,
                  [url],
                  {
                    #onSuccess: onSuccess,
                    #onCancel: onCancel,
                  },
                ),
              ),
              (T v) => _i3.Future<T>.value(v),
            ) ??
            _FakeFuture_1<T>(
              this,
              Invocation.method(
                #delete,
                [url],
                {
                  #onSuccess: onSuccess,
                  #onCancel: onCancel,
                },
              ),
            ),
        returnValueForMissingStub: _i7.ifNotNull(
              _i7.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #delete,
                  [url],
                  {
                    #onSuccess: onSuccess,
                    #onCancel: onCancel,
                  },
                ),
              ),
              (T v) => _i3.Future<T>.value(v),
            ) ??
            _FakeFuture_1<T>(
              this,
              Invocation.method(
                #delete,
                [url],
                {
                  #onSuccess: onSuccess,
                  #onCancel: onCancel,
                },
              ),
            ),
      ) as _i3.Future<T>);
  @override
  _i3.Future<T> post<T>(
    String? url,
    Map<String, dynamic>? request, {
    required T Function(Map<String, dynamic>)? onSuccess,
    required void Function(_i6.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [
            url,
            request,
          ],
          {
            #onSuccess: onSuccess,
            #onCancel: onCancel,
          },
        ),
        returnValue: _i7.ifNotNull(
              _i7.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #post,
                  [
                    url,
                    request,
                  ],
                  {
                    #onSuccess: onSuccess,
                    #onCancel: onCancel,
                  },
                ),
              ),
              (T v) => _i3.Future<T>.value(v),
            ) ??
            _FakeFuture_1<T>(
              this,
              Invocation.method(
                #post,
                [
                  url,
                  request,
                ],
                {
                  #onSuccess: onSuccess,
                  #onCancel: onCancel,
                },
              ),
            ),
        returnValueForMissingStub: _i7.ifNotNull(
              _i7.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #post,
                  [
                    url,
                    request,
                  ],
                  {
                    #onSuccess: onSuccess,
                    #onCancel: onCancel,
                  },
                ),
              ),
              (T v) => _i3.Future<T>.value(v),
            ) ??
            _FakeFuture_1<T>(
              this,
              Invocation.method(
                #post,
                [
                  url,
                  request,
                ],
                {
                  #onSuccess: onSuccess,
                  #onCancel: onCancel,
                },
              ),
            ),
      ) as _i3.Future<T>);
  @override
  _i3.Stream<_i8.Response<dynamic>> postStream(
    String? url,
    Map<String, dynamic>? request, {
    required void Function(_i6.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #postStream,
          [
            url,
            request,
          ],
          {#onCancel: onCancel},
        ),
        returnValue: _i3.Stream<_i8.Response<dynamic>>.empty(),
        returnValueForMissingStub: _i3.Stream<_i8.Response<dynamic>>.empty(),
      ) as _i3.Stream<_i8.Response<dynamic>>);
  @override
  _i3.Stream<T> sse<T>(
    String? url,
    Map<String, dynamic>? request, {
    required T Function(Map<String, dynamic>)? complete,
    required void Function(_i6.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #sse,
          [
            url,
            request,
          ],
          {
            #complete: complete,
            #onCancel: onCancel,
          },
        ),
        returnValue: _i3.Stream<T>.empty(),
        returnValueForMissingStub: _i3.Stream<T>.empty(),
      ) as _i3.Stream<T>);
  @override
  _i3.Future<T> postFormData<T>(
    String? url,
    _i8.FormData? request, {
    required T Function(Map<String, dynamic>)? complete,
    required void Function(_i6.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #postFormData,
          [
            url,
            request,
          ],
          {
            #complete: complete,
            #onCancel: onCancel,
          },
        ),
        returnValue: _i7.ifNotNull(
              _i7.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #postFormData,
                  [
                    url,
                    request,
                  ],
                  {
                    #complete: complete,
                    #onCancel: onCancel,
                  },
                ),
              ),
              (T v) => _i3.Future<T>.value(v),
            ) ??
            _FakeFuture_1<T>(
              this,
              Invocation.method(
                #postFormData,
                [
                  url,
                  request,
                ],
                {
                  #complete: complete,
                  #onCancel: onCancel,
                },
              ),
            ),
        returnValueForMissingStub: _i7.ifNotNull(
              _i7.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #postFormData,
                  [
                    url,
                    request,
                  ],
                  {
                    #complete: complete,
                    #onCancel: onCancel,
                  },
                ),
              ),
              (T v) => _i3.Future<T>.value(v),
            ) ??
            _FakeFuture_1<T>(
              this,
              Invocation.method(
                #postFormData,
                [
                  url,
                  request,
                ],
                {
                  #complete: complete,
                  #onCancel: onCancel,
                },
              ),
            ),
      ) as _i3.Future<T>);
  @override
  _i4.BaseErrorWrapper handleError({
    required int? code,
    required String? message,
    Map<String, dynamic>? data,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #handleError,
          [],
          {
            #code: code,
            #message: message,
            #data: data,
          },
        ),
        returnValue: _FakeBaseErrorWrapper_2(
          this,
          Invocation.method(
            #handleError,
            [],
            {
              #code: code,
              #message: message,
              #data: data,
            },
          ),
        ),
        returnValueForMissingStub: _FakeBaseErrorWrapper_2(
          this,
          Invocation.method(
            #handleError,
            [],
            {
              #code: code,
              #message: message,
              #data: data,
            },
          ),
        ),
      ) as _i4.BaseErrorWrapper);
}