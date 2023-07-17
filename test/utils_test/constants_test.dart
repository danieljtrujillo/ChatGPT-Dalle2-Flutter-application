import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:test/test.dart';

void main() {
  group('constants value test', () {
    test('constants kURL value test found url', () {
      const url = kURL;
      expect(url, "https://api.openai.com/v1/");
      expect(url, isA<String>());
    });
    test('constants kURL value test not found url', () {
      const url = '';
      expect(url, "");
      expect(url, isA<String>());
    });
    test('constants kURL value test found model list path', () {
      const url = kModelList;
      expect(url, "models");
      expect(url, isA<String>());
    });
    test('constants kURL value test found engine path', () {
      const url = kEngineList;
      expect(url, "engines");
      expect(url, isA<String>());
    });
    test('constants kURL value test found images generations path', () {
      const url = kGenerateImage;
      expect(url, "images/generations");
      expect(url, isA<String>());
    });
    test('constants kURL value test found chat completions path', () {
      const url = kChatGptTurbo;
      expect(url, "chat/completions");
      expect(url, isA<String>());
    });
    test('constants kURL value test found edits prompt path', () {
      const url = kEditPrompt;
      expect(url, "edits");
      expect(url, isA<String>());
    });
    test('constants kURL value test found images edits path', () {
      const url = kImageEdit;
      expect(url, "images/edits");
      expect(url, isA<String>());
    });
    test('constants kURL value test found images variations path', () {
      const url = kVariation;
      expect(url, "images/variations");
      expect(url, isA<String>());
    });
    test('constants kURL value test found embeddings path', () {
      const url = kEmbedding;
      expect(url, "embeddings");
      expect(url, isA<String>());
    });
    test('constants kURL value test found audio transcriptions path', () {
      const url = kTranscription;
      expect(url, "audio/transcriptions");
      expect(url, isA<String>());
    });
    test('constants kURL value test found audio translations path', () {
      const url = kTranslations;
      expect(url, "audio/translations");
      expect(url, isA<String>());
    });
    test('constants kURL value test found files path', () {
      const url = kFile;
      expect(url, "files");
      expect(url, isA<String>());
    });
    test('constants kURL value test found fine tunes path', () {
      const url = kFineTune;
      expect(url, "fine-tunes");
      expect(url, isA<String>());
    });
    test('constants kURL value test found fine tunes models path', () {
      const url = kFineTuneModel;
      expect(url, "models");
      expect(url, isA<String>());
    });
    test('constants kURL value test found fine moderation s path', () {
      const url = kModeration;
      expect(url, "moderations");
      expect(url, isA<String>());
    });
    test('constants kURL value test found text-davinci-003 path', () {
      const url = kTextDavinci3;
      expect(url, "text-davinci-003");
      expect(url, isA<String>());
    });
    test('constants kURL value test found text-davinci-002 path', () {
      const url = kTextDavinci2;
      expect(url, "text-davinci-002");
      expect(url, isA<String>());
    });
    test('constants kURL value test found code-davinci-002 path', () {
      const url = kCodeDavinci2;
      expect(url, "code-davinci-002");
      expect(url, isA<String>());
    });
    test('constants kURL value test found text-curie-001 path', () {
      const url = kTextCurie001;
      expect(url, "text-curie-001");
      expect(url, isA<String>());
    });
    test('constants kURL value test found text-babbage-001 path', () {
      const url = kTextBabbage001;
      expect(url, "text-babbage-001");
      expect(url, isA<String>());
    });
    test('constants kURL value test found text-ada-001 path', () {
      const url = kTextAda001;
      expect(url, "text-ada-001");
      expect(url, isA<String>());
    });
    test('constants kURL value test found gpt-3.5-turbo model', () {
      const url = kChatGptTurboModel;
      expect(url, "gpt-3.5-turbo");
      expect(url, isA<String>());
    });
    test('constants kURL value test found gpt-3.5-turbo-0301 model', () {
      const url = kChatGptTurbo0301Model;
      expect(url, "gpt-3.5-turbo-0301");
      expect(url, isA<String>());
    });
    test('constants kURL value test found gpt-4 model', () {
      const url = kChatGpt4;
      expect(url, "gpt-4");
      expect(url, isA<String>());
    });
    test('constants kURL value test found gpt-4-0314 model', () {
      const url = kChatGpt40314;
      expect(url, "gpt-4-0314");
      expect(url, isA<String>());
    });
    test('constants kURL value test found gpt-4-32k model', () {
      const url = kChatGpt432k;
      expect(url, "gpt-4-32k");
      expect(url, isA<String>());
    });
    test('constants kURL value test found gpt-4-32k-0314 model', () {
      const url = kChatGpt432k0314;
      expect(url, "gpt-4-32k-0314");
      expect(url, isA<String>());
    });
    test('constants kURL value test found text-davinci-edit-001 model', () {
      const url = kEditsTextModel;
      expect(url, "text-davinci-edit-001");
      expect(url, isA<String>());
    });
    test('constants kURL value test found code-davinci-edit-001 model', () {
      const url = kEditsCoedModel;
      expect(url, "code-davinci-edit-001");
      expect(url, isA<String>());
    });
    test('constants kURL value test found text-embedding-ada-002 model', () {
      const url = kEmbeddingAda002;
      expect(url, "text-embedding-ada-002");
      expect(url, isA<String>());
    });
    test('constants kURL value test found text-search-ada-doc-001 model', () {
      const url = kTextSearchAdaDoc001;
      expect(url, "text-search-ada-doc-001");
      expect(url, isA<String>());
    });
    test('constants kURL value test found ada model', () {
      const url = kAdaModel;
      expect(url, "ada");
      expect(url, isA<String>());
    });
    test('constants kURL value test found babbage model', () {
      const url = kBabbageModel;
      expect(url, "babbage");
      expect(url, isA<String>());
    });
    test('constants kURL value test found curie model', () {
      const url = kCurieModel;
      expect(url, "curie");
      expect(url, isA<String>());
    });
    test('constants kURL value test found davinci model', () {
      const url = kDavinciModel;
      expect(url, "davinci");
      expect(url, isA<String>());
    });
    test('constants kURL value test found text-moderation-stable model', () {
      const url = kTextMStable;
      expect(url, "text-moderation-stable");
      expect(url, isA<String>());
    });
    test('constants kURL value test found text-moderation-latest model', () {
      const url = kTextMLast;
      expect(url, "text-moderation-latest");
      expect(url, isA<String>());
    });
    test('constants kURL value test found header request', () {
      final h = kHeader('token');
      expect(h, {
        "Content-Type": 'application/json',
        "Authorization": "Bearer token",
      });
      expect(h, isA<Map<String, String>>());
    });
    test('constants kURL value test found token key data', () {
      const url = kTokenKey;
      expect(url, "token");
      expect(url, isA<String>());
    });
    test('constants kURL value test found orgId key data', () {
      const url = kOrgIdKey;
      expect(url, "orgId");
      expect(url, isA<String>());
    });
    test('constants kURL value test found OpenAI name', () {
      const url = kOpenAI;
      expect(url, "OpenAI");
      expect(url, isA<String>());
    });
    test('constants kURL value test found translateEngToThai text', () {
      final t = translateEngToThai(word: 'word');
      expect(t, "Translate this into thai : word");
      expect(t, isA<String>());
    });
    test('constants kURL value test found translateThaiToEng text', () {
      final t = translateThaiToEng(word: 'word');
      expect(t, "Translate this into English : word");
      expect(t, isA<String>());
    });
    test('constants kURL value test found translateToJapanese text', () {
      final t = translateToJapanese(word: 'word');
      expect(t, "Translate this into Japanese : word");
      expect(t, isA<String>());
    });
  });
}
