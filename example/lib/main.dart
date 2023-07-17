import 'dart:async';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'dart:io';
import 'dart:math';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'package:share_extend/share_extend.dart';
import 'package:http/http.dart' as http;
import 'dart:typed_data';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void toggleDarkMode() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: GenImgScreen(toggleDarkMode: toggleDarkMode),
    );
  }
}

class GenImgScreen extends StatefulWidget {
  final Function toggleDarkMode;

  const GenImgScreen({Key? key, required this.toggleDarkMode})
      : super(key: key);

  @override
  State<GenImgScreen> createState() => _GenImgScreenState();
}

class _GenImgScreenState extends State<GenImgScreen> {
  String img = "";
  String story = "";
  String title = "";
  late OpenAI openAI;
  StreamSubscription? subscription;

  String? selectedGender;
  String? selectedHairColor;
  String? selectedGenre;
  String? selectedEthnicity;

  String previousStory = "";
  bool isFirstStory = true;
  bool isGenerating = true;
  bool isLoading = false;
  bool isStoryLoading = false;

  final List<String> genderList = ['male', 'female'];
  final List<String> hairColorList = [
    'auburn',
    'black',
    'blonde',
    'blue',
    'brown',
    'burgundy',
    'green',
    'grey',
    'magenta',
    'orange',
    'pink',
    'purple',
    'rainbow',
    'red',
    'silver',
    'strawberry blonde',
    'teal',
    'white'
  ];
  final List<String> genreList = [
    'absurdist',
    'children',
    'crime',
    'cyberpunk',
    'fantasy',
    'historical fiction',
    'horror',
    'military fiction',
    'mystery',
    'non-fiction',
    'paranormal',
    'philosophical fiction',
    'political',
    'psychedelic fiction',
    'psychological thriller',
    'romance',
    'satire',
    'science fiction',
    'speculative fiction',
    'spy fiction',
    'surrealist fiction',
    'true crime',
    'western',
    'young adult'
  ];
  final List<String> ethnicityList = [
    'African',
    'Asian',
    'Caucasian',
    'Hispanic',
    'Indigenous',
    'Middle Eastern',
    'Pacific Islander',
    'South Asian'
  ];

  @override
  void initState() {
    openAI = OpenAI.instance.build(
        token: kToken,
        baseOption: HttpSetup(receiveTimeout: const Duration(seconds: 15)),
        enableLog: true);
    super.initState();
  }

  void _generateImage() async {
    setState(() {
      isLoading = true; // set isLoading to true before starting generation
    });

    final prompt =
        "A front facing ${selectedGenre} portrait of a ${selectedEthnicity} ${selectedGender} person with ${selectedHairColor} hair.";
    final request = GenerateImage(prompt, 1,
        size: ImageSize.size512, responseFormat: Format.url);
    final response = await openAI.generateImage(request);
    setState(() {
      img = "${response?.data?.last?.url}";
      isLoading = false; // set isLoading to false after generation is finished
    });

    _generateStory(); // Call to generate story after image
  }

  void _generateStory() async {
    final prompt =
        "Create the introduction paragraph for a ${selectedGenre} story for a ${selectedEthnicity} ${selectedGender} person with ${selectedHairColor} hair. THE STORY CANNOT BE MORE THAN 600 CHARACTERS OR 120 WORDS. PLEASE INSERT SOME PROFOUND PHILOSOPHICAL INSIGHT/MORAL/THEME INTO THE OVERALL STORY. Make the only the first line of the first generation a Title (but don't say the word title), I would also like a line breake after the title. MAKE SURE THAT RESPONSES ALWAYS END WITH A COMPLETE SENTENCE. BE VERBOSE AND TRY NOT TO REPEAT YOURSELF";
    final request = ChatCompleteText(messages: [
      Messages(role: Role.system, content: prompt),
    ], maxToken: 200, model: Gpt4ChatModel());
    final response = await openAI.onChatCompletion(request: request);
    print(
        "Full response: ${response?.toJson()}"); // This will print the full response including additional data.

    setState(() {
      story = response?.choices.last.message?.content ?? "Default story text";
      print("Story: $story"); // This will print the story to the console.
      if (story.isNotEmpty) {
        List<String> lines = story.split('\n'); // Split the story into lines
        title = lines.first;
        // Check if there is more than one line
        if (lines.length > 1) {
          // Remove the first line from the story
          lines.removeAt(0);
          // Re-construct the story by joining the remaining lines
          story = lines.join('\n');
        } else {
          // If there is only one line (the title), make the story empty
          story = "";
        }
      }
      previousStory = story;
      isFirstStory = false;
      isGenerating = false;
    });
  }

  void _extendStory() async {
    setState(() {
      isStoryLoading =
          true; // set isStoryLoading to true before starting story generation
    });

    if (!isFirstStory) {
      final prompt = previousStory;
      final request = ChatCompleteText(messages: [
        Messages(role: Role.system, content: prompt),
      ], maxToken: 200, model: Gpt4ChatModel());
      final response = await openAI.onChatCompletion(request: request);
      setState(() {
        String extension =
            response?.choices.last.message?.content ?? "Default story text";
        previousStory += " " + extension;
        isStoryLoading =
            false; // set isStoryLoading to false after story generation is finished
      });
    }
  }

  void _resetView() {
    setState(() {
      img = "";
      story = "";
      selectedGender = null;
      selectedHairColor = null;
      selectedGenre = null;
      previousStory = "";
      isFirstStory = true;
      isGenerating = true;
    });
  }

  Future<void> _saveAsPDF() async {
    final pdf = pw.Document();

    var response = await http.get(Uri.parse(img));
    final Uint8List bytes = response.bodyBytes;

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          children: [
            pw.Expanded(
              child: pw.Center(child: pw.Image(pw.MemoryImage(bytes))),
            ),
            pw.Text(
              title,
              textAlign: pw.TextAlign.center,
              style: pw.TextStyle(fontSize: 30, fontWeight: pw.FontWeight.bold),
            ),
          ],
        ),
      ),
    );

    const int wordsPerPage = 300;
    final words = previousStory.split(' ');
    for (int i = 0; i < words.length; i += wordsPerPage) {
      int start = i;
      int end = min(i + wordsPerPage, words.length);
      String pageText = words.sublist(start, end).join(' ');

      pdf.addPage(
        pw.Page(
          pageTheme: pw.PageTheme(
            margin: pw.EdgeInsets.all(32), // Adjust the page margin
          ),
          build: (pw.Context context) => pw.Padding(
            padding: pw.EdgeInsets.only(
                top: 40.0, bottom: 40.0), // Adjust padding as needed
            child: pw.Text(
              pageText,
              style: pw.TextStyle(
                  fontSize: 16, // Adjust the font size as needed
                  lineSpacing: 1.2), // Adjust lineSpacing as needed
            ),
          ),
        ),
      );
    }
    final output = await getTemporaryDirectory();
    final file = File("${output.path}/story.pdf");
    await file.writeAsBytes(await pdf.save());

    ShareExtend.share(file.path, "file");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SagaSmith.AI'),
        actions: <Widget>[
          IconButton(
            icon:
                Icon(Icons.brightness_6), // Change this to your preferred icon
            onPressed: () => widget.toggleDarkMode(), // Add this line
          ),
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _resetView,
          ),
          IconButton(
            icon: Icon(Icons.save),
            onPressed: _saveAsPDF,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isGenerating) ...[
              DropdownButton(
                value: selectedGender,
                items: genderList.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedGender = newValue.toString();
                  });
                },
                hint: DefaultTextStyle(
                  style: const TextStyle(color: Colors.red),
                  child: const Text('Select Gender'),
                ),
              ),
              DropdownButton(
                value: selectedEthnicity,
                items: ethnicityList.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedEthnicity = newValue.toString();
                  });
                },
                hint: DefaultTextStyle(
                  style: const TextStyle(color: Colors.red),
                  child: const Text('Select Ethnicity'),
                ),
              ),
              DropdownButton(
                value: selectedHairColor,
                items: hairColorList.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedHairColor = newValue.toString();
                  });
                },
                hint: DefaultTextStyle(
                  style: const TextStyle(color: Colors.red),
                  child: const Text('Select Hair Color'),
                ),
              ),
              DropdownButton(
                value: selectedGenre,
                items: genreList.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedGenre = newValue.toString();
                  });
                },
                hint: DefaultTextStyle(
                  style: const TextStyle(color: Colors.red),
                  child: const Text('Select Genre'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () => _generateImage(),
                  child: const Text("Generate Story"),
                ),
              ),
            ],
isLoading
    ? CircularProgressIndicator()
    : img == ""
        ? Container() // empty container when img is not yet loaded
        : Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  title, // Display the title here
                  style: TextStyle(
                    fontSize: 24.0, // Increase the font size for the title
                    fontWeight: FontWeight.bold, // Make the title bold
                    color: Colors.blueGrey, // Change the color to blueGrey
                    letterSpacing: 2.0, // Increase the letter spacing
                  ),
                  textAlign: TextAlign.center, // Center align the title
                ),
              ),
              Divider(
                color: Colors.blueGrey, // Set the color of the divider
                thickness: 2.0, // Set the thickness of the divider
              ),
            ],
          ),

            const Text(''),
            Text(
              previousStory.isNotEmpty ? previousStory : "",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            // Conditionally render the "Next" button based on `isGenerating`
            if (!isGenerating)
              ElevatedButton(
                onPressed: isStoryLoading
                    ? null
                    : () =>
                        _extendStory(), // disable button during story loading
                child: isStoryLoading
                    ? CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.white), // color the spinner white
                      )
                    : const Text("Read more..."),
              ),
          ],
        ),
      ),
    );
  }
}
