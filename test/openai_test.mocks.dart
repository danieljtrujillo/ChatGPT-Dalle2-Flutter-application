// Mocks generated by Mockito 5.4.1 from annotations
// in chat_gpt_sdk/test/openai_test.dart.
// Do not manually edit this file.

// @dart=2.19

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i22;

import 'package:chat_gpt_sdk/src/audio.dart' as _i4;
import 'package:chat_gpt_sdk/src/edit.dart' as _i2;
import 'package:chat_gpt_sdk/src/embedding.dart' as _i3;
import 'package:chat_gpt_sdk/src/fine_tuned.dart' as _i6;
import 'package:chat_gpt_sdk/src/model/audio/request/audio_request.dart'
    as _i30;
import 'package:chat_gpt_sdk/src/model/audio/response/audio_response.dart'
    as _i11;
import 'package:chat_gpt_sdk/src/model/cancel/cancel_data.dart' as _i23;
import 'package:chat_gpt_sdk/src/model/chat_complete/request/chat_complete_text.dart'
    as _i27;
import 'package:chat_gpt_sdk/src/model/chat_complete/response/chat_ct_response.dart'
    as _i26;
import 'package:chat_gpt_sdk/src/model/chat_complete/response/chat_response_sse.dart'
    as _i29;
import 'package:chat_gpt_sdk/src/model/client/http_setup.dart' as _i21;
import 'package:chat_gpt_sdk/src/model/complete_text/request/complete_text.dart'
    as _i25;
import 'package:chat_gpt_sdk/src/model/complete_text/response/complete_response.dart'
    as _i24;
import 'package:chat_gpt_sdk/src/model/edits/request/edit_request.dart' as _i31;
import 'package:chat_gpt_sdk/src/model/edits/response/edit_response.dart'
    as _i12;
import 'package:chat_gpt_sdk/src/model/embedding/request/embed_request.dart'
    as _i34;
import 'package:chat_gpt_sdk/src/model/embedding/response/embed_response.dart'
    as _i14;
import 'package:chat_gpt_sdk/src/model/file/request/upload_file.dart' as _i37;
import 'package:chat_gpt_sdk/src/model/file/response/delete_file.dart' as _i20;
import 'package:chat_gpt_sdk/src/model/file/response/file_response.dart'
    as _i18;
import 'package:chat_gpt_sdk/src/model/file/response/upload_response.dart'
    as _i19;
import 'package:chat_gpt_sdk/src/model/fine_tune/request/create_fine_tune.dart'
    as _i35;
import 'package:chat_gpt_sdk/src/model/fine_tune/response/fine_tune_delete.dart'
    as _i16;
import 'package:chat_gpt_sdk/src/model/fine_tune/response/fine_tune_model.dart'
    as _i15;
import 'package:chat_gpt_sdk/src/model/gen_image/request/edit_file.dart'
    as _i32;
import 'package:chat_gpt_sdk/src/model/gen_image/request/generate_image.dart'
    as _i28;
import 'package:chat_gpt_sdk/src/model/gen_image/request/variation.dart'
    as _i33;
import 'package:chat_gpt_sdk/src/model/gen_image/response/gen_img_response.dart'
    as _i13;
import 'package:chat_gpt_sdk/src/model/moderation/enum/moderation_model.dart'
    as _i36;
import 'package:chat_gpt_sdk/src/model/moderation/response/moderation_data.dart'
    as _i17;
import 'package:chat_gpt_sdk/src/model/openai_engine/engine_model.dart' as _i10;
import 'package:chat_gpt_sdk/src/model/openai_model/openai_model.dart' as _i9;
import 'package:chat_gpt_sdk/src/moderation.dart' as _i7;
import 'package:chat_gpt_sdk/src/openai.dart' as _i8;
import 'package:chat_gpt_sdk/src/openai_file.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;

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

class _FakeEdit_0 extends _i1.SmartFake implements _i2.Edit {
  _FakeEdit_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEmbedding_1 extends _i1.SmartFake implements _i3.Embedding {
  _FakeEmbedding_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAudio_2 extends _i1.SmartFake implements _i4.Audio {
  _FakeAudio_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeOpenAIFile_3 extends _i1.SmartFake implements _i5.OpenAIFile {
  _FakeOpenAIFile_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFineTuned_4 extends _i1.SmartFake implements _i6.FineTuned {
  _FakeFineTuned_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeModeration_5 extends _i1.SmartFake implements _i7.Moderation {
  _FakeModeration_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeOpenAI_6 extends _i1.SmartFake implements _i8.OpenAI {
  _FakeOpenAI_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeOpenAiModel_7 extends _i1.SmartFake implements _i9.OpenAiModel {
  _FakeOpenAiModel_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEngineModel_8 extends _i1.SmartFake implements _i10.EngineModel {
  _FakeEngineModel_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAudioResponse_9 extends _i1.SmartFake implements _i11.AudioResponse {
  _FakeAudioResponse_9(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEditResponse_10 extends _i1.SmartFake implements _i12.EditResponse {
  _FakeEditResponse_10(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGenImgResponse_11 extends _i1.SmartFake
    implements _i13.GenImgResponse {
  _FakeGenImgResponse_11(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEmbedResponse_12 extends _i1.SmartFake
    implements _i14.EmbedResponse {
  _FakeEmbedResponse_12(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFineTuneModel_13 extends _i1.SmartFake
    implements _i15.FineTuneModel {
  _FakeFineTuneModel_13(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFineTuneDelete_14 extends _i1.SmartFake
    implements _i16.FineTuneDelete {
  _FakeFineTuneDelete_14(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeModerationData_15 extends _i1.SmartFake
    implements _i17.ModerationData {
  _FakeModerationData_15(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFileResponse_16 extends _i1.SmartFake implements _i18.FileResponse {
  _FakeFileResponse_16(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUploadResponse_17 extends _i1.SmartFake
    implements _i19.UploadResponse {
  _FakeUploadResponse_17(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDeleteFile_18 extends _i1.SmartFake implements _i20.DeleteFile {
  _FakeDeleteFile_18(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [OpenAI].
///
/// See the documentation for Mockito's code generation for more information.
class MockOpenAI extends _i1.Mock implements _i8.OpenAI {
  @override
  String get token => (super.noSuchMethod(
        Invocation.getter(#token),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  _i2.Edit get editor => (super.noSuchMethod(
        Invocation.getter(#editor),
        returnValue: _FakeEdit_0(
          this,
          Invocation.getter(#editor),
        ),
        returnValueForMissingStub: _FakeEdit_0(
          this,
          Invocation.getter(#editor),
        ),
      ) as _i2.Edit);
  @override
  _i3.Embedding get embed => (super.noSuchMethod(
        Invocation.getter(#embed),
        returnValue: _FakeEmbedding_1(
          this,
          Invocation.getter(#embed),
        ),
        returnValueForMissingStub: _FakeEmbedding_1(
          this,
          Invocation.getter(#embed),
        ),
      ) as _i3.Embedding);
  @override
  _i4.Audio get audio => (super.noSuchMethod(
        Invocation.getter(#audio),
        returnValue: _FakeAudio_2(
          this,
          Invocation.getter(#audio),
        ),
        returnValueForMissingStub: _FakeAudio_2(
          this,
          Invocation.getter(#audio),
        ),
      ) as _i4.Audio);
  @override
  _i5.OpenAIFile get file => (super.noSuchMethod(
        Invocation.getter(#file),
        returnValue: _FakeOpenAIFile_3(
          this,
          Invocation.getter(#file),
        ),
        returnValueForMissingStub: _FakeOpenAIFile_3(
          this,
          Invocation.getter(#file),
        ),
      ) as _i5.OpenAIFile);
  @override
  _i6.FineTuned get fineTune => (super.noSuchMethod(
        Invocation.getter(#fineTune),
        returnValue: _FakeFineTuned_4(
          this,
          Invocation.getter(#fineTune),
        ),
        returnValueForMissingStub: _FakeFineTuned_4(
          this,
          Invocation.getter(#fineTune),
        ),
      ) as _i6.FineTuned);
  @override
  _i7.Moderation get moderation => (super.noSuchMethod(
        Invocation.getter(#moderation),
        returnValue: _FakeModeration_5(
          this,
          Invocation.getter(#moderation),
        ),
        returnValueForMissingStub: _FakeModeration_5(
          this,
          Invocation.getter(#moderation),
        ),
      ) as _i7.Moderation);
  @override
  void setToken(String? token) => super.noSuchMethod(
        Invocation.method(
          #setToken,
          [token],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i8.OpenAI build({
    String? token,
    _i21.HttpSetup? baseOption,
    bool? enableLog = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #build,
          [],
          {
            #token: token,
            #baseOption: baseOption,
            #enableLog: enableLog,
          },
        ),
        returnValue: _FakeOpenAI_6(
          this,
          Invocation.method(
            #build,
            [],
            {
              #token: token,
              #baseOption: baseOption,
              #enableLog: enableLog,
            },
          ),
        ),
        returnValueForMissingStub: _FakeOpenAI_6(
          this,
          Invocation.method(
            #build,
            [],
            {
              #token: token,
              #baseOption: baseOption,
              #enableLog: enableLog,
            },
          ),
        ),
      ) as _i8.OpenAI);
  @override
  _i22.Future<_i9.OpenAiModel> listModel(
          {void Function(_i23.CancelData)? onCancel}) =>
      (super.noSuchMethod(
        Invocation.method(
          #listModel,
          [],
          {#onCancel: onCancel},
        ),
        returnValue: _i22.Future<_i9.OpenAiModel>.value(_FakeOpenAiModel_7(
          this,
          Invocation.method(
            #listModel,
            [],
            {#onCancel: onCancel},
          ),
        )),
        returnValueForMissingStub:
            _i22.Future<_i9.OpenAiModel>.value(_FakeOpenAiModel_7(
          this,
          Invocation.method(
            #listModel,
            [],
            {#onCancel: onCancel},
          ),
        )),
      ) as _i22.Future<_i9.OpenAiModel>);
  @override
  _i22.Future<_i10.EngineModel> listEngine(
          {void Function(_i23.CancelData)? onCancel}) =>
      (super.noSuchMethod(
        Invocation.method(
          #listEngine,
          [],
          {#onCancel: onCancel},
        ),
        returnValue: _i22.Future<_i10.EngineModel>.value(_FakeEngineModel_8(
          this,
          Invocation.method(
            #listEngine,
            [],
            {#onCancel: onCancel},
          ),
        )),
        returnValueForMissingStub:
            _i22.Future<_i10.EngineModel>.value(_FakeEngineModel_8(
          this,
          Invocation.method(
            #listEngine,
            [],
            {#onCancel: onCancel},
          ),
        )),
      ) as _i22.Future<_i10.EngineModel>);
  @override
  _i22.Future<_i24.CompleteResponse?> onCompletion({
    required _i25.CompleteText? request,
    void Function(_i23.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #onCompletion,
          [],
          {
            #request: request,
            #onCancel: onCancel,
          },
        ),
        returnValue: _i22.Future<_i24.CompleteResponse?>.value(),
        returnValueForMissingStub: _i22.Future<_i24.CompleteResponse?>.value(),
      ) as _i22.Future<_i24.CompleteResponse?>);
  @override
  _i22.Future<_i26.ChatCTResponse?> onChatCompletion({
    required _i27.ChatCompleteText? request,
    void Function(_i23.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #onChatCompletion,
          [],
          {
            #request: request,
            #onCancel: onCancel,
          },
        ),
        returnValue: _i22.Future<_i26.ChatCTResponse?>.value(),
        returnValueForMissingStub: _i22.Future<_i26.ChatCTResponse?>.value(),
      ) as _i22.Future<_i26.ChatCTResponse?>);
  @override
  _i22.Future<_i13.GenImgResponse?> generateImage(
    _i28.GenerateImage? request, {
    void Function(_i23.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #generateImage,
          [request],
          {#onCancel: onCancel},
        ),
        returnValue: _i22.Future<_i13.GenImgResponse?>.value(),
        returnValueForMissingStub: _i22.Future<_i13.GenImgResponse?>.value(),
      ) as _i22.Future<_i13.GenImgResponse?>);
  @override
  _i22.Stream<_i29.ChatResponseSSE> onChatCompletionSSE({
    required _i27.ChatCompleteText? request,
    void Function(_i23.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #onChatCompletionSSE,
          [],
          {
            #request: request,
            #onCancel: onCancel,
          },
        ),
        returnValue: _i22.Stream<_i29.ChatResponseSSE>.empty(),
        returnValueForMissingStub: _i22.Stream<_i29.ChatResponseSSE>.empty(),
      ) as _i22.Stream<_i29.ChatResponseSSE>);
  @override
  _i22.Stream<_i24.CompleteResponse> onCompletionSSE({
    required _i25.CompleteText? request,
    void Function(_i23.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #onCompletionSSE,
          [],
          {
            #request: request,
            #onCancel: onCancel,
          },
        ),
        returnValue: _i22.Stream<_i24.CompleteResponse>.empty(),
        returnValueForMissingStub: _i22.Stream<_i24.CompleteResponse>.empty(),
      ) as _i22.Stream<_i24.CompleteResponse>);
}

/// A class which mocks [Audio].
///
/// See the documentation for Mockito's code generation for more information.
class MockAudio extends _i1.Mock implements _i4.Audio {
  @override
  _i22.Future<_i11.AudioResponse> transcribes(
    _i30.AudioRequest? request, {
    void Function(_i23.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #transcribes,
          [request],
          {#onCancel: onCancel},
        ),
        returnValue: _i22.Future<_i11.AudioResponse>.value(_FakeAudioResponse_9(
          this,
          Invocation.method(
            #transcribes,
            [request],
            {#onCancel: onCancel},
          ),
        )),
        returnValueForMissingStub:
            _i22.Future<_i11.AudioResponse>.value(_FakeAudioResponse_9(
          this,
          Invocation.method(
            #transcribes,
            [request],
            {#onCancel: onCancel},
          ),
        )),
      ) as _i22.Future<_i11.AudioResponse>);
  @override
  _i22.Future<_i11.AudioResponse> translate(
    _i30.AudioRequest? request, {
    void Function(_i23.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #translate,
          [request],
          {#onCancel: onCancel},
        ),
        returnValue: _i22.Future<_i11.AudioResponse>.value(_FakeAudioResponse_9(
          this,
          Invocation.method(
            #translate,
            [request],
            {#onCancel: onCancel},
          ),
        )),
        returnValueForMissingStub:
            _i22.Future<_i11.AudioResponse>.value(_FakeAudioResponse_9(
          this,
          Invocation.method(
            #translate,
            [request],
            {#onCancel: onCancel},
          ),
        )),
      ) as _i22.Future<_i11.AudioResponse>);
}

/// A class which mocks [Edit].
///
/// See the documentation for Mockito's code generation for more information.
class MockEdit extends _i1.Mock implements _i2.Edit {
  @override
  _i22.Future<_i12.EditResponse> prompt(
    _i31.EditRequest? request, {
    void Function(_i23.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #prompt,
          [request],
          {#onCancel: onCancel},
        ),
        returnValue: _i22.Future<_i12.EditResponse>.value(_FakeEditResponse_10(
          this,
          Invocation.method(
            #prompt,
            [request],
            {#onCancel: onCancel},
          ),
        )),
        returnValueForMissingStub:
            _i22.Future<_i12.EditResponse>.value(_FakeEditResponse_10(
          this,
          Invocation.method(
            #prompt,
            [request],
            {#onCancel: onCancel},
          ),
        )),
      ) as _i22.Future<_i12.EditResponse>);
  @override
  _i22.Future<_i13.GenImgResponse> editImage(
    _i32.EditImageRequest? request, {
    void Function(_i23.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #editImage,
          [request],
          {#onCancel: onCancel},
        ),
        returnValue:
            _i22.Future<_i13.GenImgResponse>.value(_FakeGenImgResponse_11(
          this,
          Invocation.method(
            #editImage,
            [request],
            {#onCancel: onCancel},
          ),
        )),
        returnValueForMissingStub:
            _i22.Future<_i13.GenImgResponse>.value(_FakeGenImgResponse_11(
          this,
          Invocation.method(
            #editImage,
            [request],
            {#onCancel: onCancel},
          ),
        )),
      ) as _i22.Future<_i13.GenImgResponse>);
  @override
  _i22.Future<_i13.GenImgResponse> variation(
    _i33.Variation? request, {
    void Function(_i23.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #variation,
          [request],
          {#onCancel: onCancel},
        ),
        returnValue:
            _i22.Future<_i13.GenImgResponse>.value(_FakeGenImgResponse_11(
          this,
          Invocation.method(
            #variation,
            [request],
            {#onCancel: onCancel},
          ),
        )),
        returnValueForMissingStub:
            _i22.Future<_i13.GenImgResponse>.value(_FakeGenImgResponse_11(
          this,
          Invocation.method(
            #variation,
            [request],
            {#onCancel: onCancel},
          ),
        )),
      ) as _i22.Future<_i13.GenImgResponse>);
}

/// A class which mocks [Embedding].
///
/// See the documentation for Mockito's code generation for more information.
class MockEmbedding extends _i1.Mock implements _i3.Embedding {
  @override
  _i22.Future<_i14.EmbedResponse> embedding(
    _i34.EmbedRequest? request, {
    void Function(_i23.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #embedding,
          [request],
          {#onCancel: onCancel},
        ),
        returnValue:
            _i22.Future<_i14.EmbedResponse>.value(_FakeEmbedResponse_12(
          this,
          Invocation.method(
            #embedding,
            [request],
            {#onCancel: onCancel},
          ),
        )),
        returnValueForMissingStub:
            _i22.Future<_i14.EmbedResponse>.value(_FakeEmbedResponse_12(
          this,
          Invocation.method(
            #embedding,
            [request],
            {#onCancel: onCancel},
          ),
        )),
      ) as _i22.Future<_i14.EmbedResponse>);
}

/// A class which mocks [FineTuned].
///
/// See the documentation for Mockito's code generation for more information.
class MockFineTuned extends _i1.Mock implements _i6.FineTuned {
  @override
  _i22.Future<_i15.FineTuneModel> create(
    _i35.CreateFineTune? request, {
    void Function(_i23.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #create,
          [request],
          {#onCancel: onCancel},
        ),
        returnValue:
            _i22.Future<_i15.FineTuneModel>.value(_FakeFineTuneModel_13(
          this,
          Invocation.method(
            #create,
            [request],
            {#onCancel: onCancel},
          ),
        )),
        returnValueForMissingStub:
            _i22.Future<_i15.FineTuneModel>.value(_FakeFineTuneModel_13(
          this,
          Invocation.method(
            #create,
            [request],
            {#onCancel: onCancel},
          ),
        )),
      ) as _i22.Future<_i15.FineTuneModel>);
  @override
  _i22.Future<List<_i15.FineTuneModel>> list(
          {void Function(_i23.CancelData)? onCancel}) =>
      (super.noSuchMethod(
        Invocation.method(
          #list,
          [],
          {#onCancel: onCancel},
        ),
        returnValue:
            _i22.Future<List<_i15.FineTuneModel>>.value(<_i15.FineTuneModel>[]),
        returnValueForMissingStub:
            _i22.Future<List<_i15.FineTuneModel>>.value(<_i15.FineTuneModel>[]),
      ) as _i22.Future<List<_i15.FineTuneModel>>);
  @override
  _i22.Future<_i15.FineTuneModel> retrieve(
    String? fineTuneId, {
    void Function(_i23.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #retrieve,
          [fineTuneId],
          {#onCancel: onCancel},
        ),
        returnValue:
            _i22.Future<_i15.FineTuneModel>.value(_FakeFineTuneModel_13(
          this,
          Invocation.method(
            #retrieve,
            [fineTuneId],
            {#onCancel: onCancel},
          ),
        )),
        returnValueForMissingStub:
            _i22.Future<_i15.FineTuneModel>.value(_FakeFineTuneModel_13(
          this,
          Invocation.method(
            #retrieve,
            [fineTuneId],
            {#onCancel: onCancel},
          ),
        )),
      ) as _i22.Future<_i15.FineTuneModel>);
  @override
  _i22.Future<_i15.FineTuneModel> cancel(
    String? fineTuneId, {
    void Function(_i23.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #cancel,
          [fineTuneId],
          {#onCancel: onCancel},
        ),
        returnValue:
            _i22.Future<_i15.FineTuneModel>.value(_FakeFineTuneModel_13(
          this,
          Invocation.method(
            #cancel,
            [fineTuneId],
            {#onCancel: onCancel},
          ),
        )),
        returnValueForMissingStub:
            _i22.Future<_i15.FineTuneModel>.value(_FakeFineTuneModel_13(
          this,
          Invocation.method(
            #cancel,
            [fineTuneId],
            {#onCancel: onCancel},
          ),
        )),
      ) as _i22.Future<_i15.FineTuneModel>);
  @override
  _i22.Future<_i16.FineTuneDelete> delete(
    String? model, {
    void Function(_i23.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [model],
          {#onCancel: onCancel},
        ),
        returnValue:
            _i22.Future<_i16.FineTuneDelete>.value(_FakeFineTuneDelete_14(
          this,
          Invocation.method(
            #delete,
            [model],
            {#onCancel: onCancel},
          ),
        )),
        returnValueForMissingStub:
            _i22.Future<_i16.FineTuneDelete>.value(_FakeFineTuneDelete_14(
          this,
          Invocation.method(
            #delete,
            [model],
            {#onCancel: onCancel},
          ),
        )),
      ) as _i22.Future<_i16.FineTuneDelete>);
  @override
  _i22.Stream<List<_i15.FineTuneModel>> listStream(
    String? fineTuneId, {
    void Function(_i23.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #listStream,
          [fineTuneId],
          {#onCancel: onCancel},
        ),
        returnValue: _i22.Stream<List<_i15.FineTuneModel>>.empty(),
        returnValueForMissingStub:
            _i22.Stream<List<_i15.FineTuneModel>>.empty(),
      ) as _i22.Stream<List<_i15.FineTuneModel>>);
}

/// A class which mocks [Moderation].
///
/// See the documentation for Mockito's code generation for more information.
class MockModeration extends _i1.Mock implements _i7.Moderation {
  @override
  _i22.Future<_i17.ModerationData> create({
    required String? input,
    required _i36.ModerationModel? model,
    void Function(_i23.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #create,
          [],
          {
            #input: input,
            #model: model,
            #onCancel: onCancel,
          },
        ),
        returnValue:
            _i22.Future<_i17.ModerationData>.value(_FakeModerationData_15(
          this,
          Invocation.method(
            #create,
            [],
            {
              #input: input,
              #model: model,
              #onCancel: onCancel,
            },
          ),
        )),
        returnValueForMissingStub:
            _i22.Future<_i17.ModerationData>.value(_FakeModerationData_15(
          this,
          Invocation.method(
            #create,
            [],
            {
              #input: input,
              #model: model,
              #onCancel: onCancel,
            },
          ),
        )),
      ) as _i22.Future<_i17.ModerationData>);
}

/// A class which mocks [OpenAIFile].
///
/// See the documentation for Mockito's code generation for more information.
class MockOpenAIFile extends _i1.Mock implements _i5.OpenAIFile {
  @override
  _i22.Future<_i18.FileResponse> get(
          {void Function(_i23.CancelData)? onCancel}) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [],
          {#onCancel: onCancel},
        ),
        returnValue: _i22.Future<_i18.FileResponse>.value(_FakeFileResponse_16(
          this,
          Invocation.method(
            #get,
            [],
            {#onCancel: onCancel},
          ),
        )),
        returnValueForMissingStub:
            _i22.Future<_i18.FileResponse>.value(_FakeFileResponse_16(
          this,
          Invocation.method(
            #get,
            [],
            {#onCancel: onCancel},
          ),
        )),
      ) as _i22.Future<_i18.FileResponse>);
  @override
  _i22.Future<_i19.UploadResponse> uploadFile(
    _i37.UploadFile? request, {
    void Function(_i23.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #uploadFile,
          [request],
          {#onCancel: onCancel},
        ),
        returnValue:
            _i22.Future<_i19.UploadResponse>.value(_FakeUploadResponse_17(
          this,
          Invocation.method(
            #uploadFile,
            [request],
            {#onCancel: onCancel},
          ),
        )),
        returnValueForMissingStub:
            _i22.Future<_i19.UploadResponse>.value(_FakeUploadResponse_17(
          this,
          Invocation.method(
            #uploadFile,
            [request],
            {#onCancel: onCancel},
          ),
        )),
      ) as _i22.Future<_i19.UploadResponse>);
  @override
  _i22.Future<_i20.DeleteFile> delete(
    String? fileId, {
    void Function(_i23.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [fileId],
          {#onCancel: onCancel},
        ),
        returnValue: _i22.Future<_i20.DeleteFile>.value(_FakeDeleteFile_18(
          this,
          Invocation.method(
            #delete,
            [fileId],
            {#onCancel: onCancel},
          ),
        )),
        returnValueForMissingStub:
            _i22.Future<_i20.DeleteFile>.value(_FakeDeleteFile_18(
          this,
          Invocation.method(
            #delete,
            [fileId],
            {#onCancel: onCancel},
          ),
        )),
      ) as _i22.Future<_i20.DeleteFile>);
  @override
  _i22.Future<_i19.UploadResponse> retrieve(
    String? fileId, {
    void Function(_i23.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #retrieve,
          [fileId],
          {#onCancel: onCancel},
        ),
        returnValue:
            _i22.Future<_i19.UploadResponse>.value(_FakeUploadResponse_17(
          this,
          Invocation.method(
            #retrieve,
            [fileId],
            {#onCancel: onCancel},
          ),
        )),
        returnValueForMissingStub:
            _i22.Future<_i19.UploadResponse>.value(_FakeUploadResponse_17(
          this,
          Invocation.method(
            #retrieve,
            [fileId],
            {#onCancel: onCancel},
          ),
        )),
      ) as _i22.Future<_i19.UploadResponse>);
  @override
  _i22.Future<dynamic> retrieveContent(
    String? fileId, {
    void Function(_i23.CancelData)? onCancel,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #retrieveContent,
          [fileId],
          {#onCancel: onCancel},
        ),
        returnValue: _i22.Future<dynamic>.value(),
        returnValueForMissingStub: _i22.Future<dynamic>.value(),
      ) as _i22.Future<dynamic>);
}
