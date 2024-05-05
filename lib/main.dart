import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:google_fonts/google_fonts.dart';
import 'buttons.dart';

void main() {
  runApp(SustainableOptionsApp());
}

class SustainableOptionsApp extends StatefulWidget {
  @override
  State<SustainableOptionsApp> createState() => _SustainableOptionsAppState();
}

class _SustainableOptionsAppState extends State<SustainableOptionsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sustainable Options',
      theme: ThemeData(
        primaryColor: Colors.green,
        fontFamily: 'Roboto',
      ),
      home: SplashScreen(),
    );
  }

  void setStateWithoutReturn() {}

  void mySetStateMethod() {
    setState(setStateWithoutReturn);
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2, milliseconds: 500), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainScreen()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'lib/assets/logo.png',
          width: 200,
        ),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'lib/assets/bgimage2.jpg',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.transparent],
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) => const LinearGradient(
                      colors: [Colors.green, Colors.yellow],
                    ).createShader(bounds),
                    child: Text(
                      'EcoMate',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.pacifico(
                        fontSize: MediaQuery.of(context).size.width / 5.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 50.0),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 1),
                    child: Card(
                      elevation: 5,
                      child: InkWell(
                        splashColor: Colors.grey,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatScreen()),
                          );
                        },
                        child: ListTile(
                          title: Text(
                            "Chatbot",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          leading: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.chat,
                                color: Theme.of(context).primaryColor,
                              ),
                            ],
                          ),
                          subtitle: const Text('Talk to a bot'),
                          trailing: const Icon(Icons.navigate_next),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 1),
                    child: Card(
                      elevation: 5,
                      child: InkWell(
                        splashColor: Colors.grey,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CarbonCalculator()),
                          );
                        },
                        child: ListTile(
                          title: Text(
                            "Carbon Footprint Calculator",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          leading: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.co2,
                                color: Theme.of(context).primaryColor,
                              ),
                            ],
                          ),
                          subtitle:
                              const Text('Calculate your carbon footprint'),
                          trailing: const Icon(Icons.navigate_next),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 1),
                    child: Card(
                      elevation: 5,
                      child: InkWell(
                        splashColor: Colors.grey,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SurveyPage()),
                          );
                        },
                        child: ListTile(
                          title: Text(
                            "Survey",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          leading: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.list_alt,
                                color: Theme.of(context).primaryColor,
                              ),
                            ],
                          ),
                          subtitle:
                              const Text('Know how sustainable your life is '),
                          trailing: const Icon(Icons.navigate_next),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 1),
                    child: Card(
                      elevation: 5,
                      child: InkWell(
                        splashColor: Colors.grey,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EducationalResources()),
                          );
                        },
                        child: ListTile(
                          title: Text(
                            "Educational Resources",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          leading: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.school,
                                color: Theme.of(context).primaryColor,
                              ),
                            ],
                          ),
                          subtitle:
                              const Text('Know more about sustainability'),
                          trailing: const Icon(Icons.navigate_next),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 1),
                    child: Card(
                      elevation: 5,
                      child: InkWell(
                        splashColor: Colors.grey,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => sdg()),
                          );
                        },
                        child: ListTile(
                          title: Text(
                            "SDG Goals",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          leading: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.energy_savings_leaf,
                                color: Theme.of(context).primaryColor,
                              ),
                            ],
                          ),
                          subtitle: const Text('Learn more about SDG goals'),
                          trailing: const Icon(Icons.navigate_next),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 1),
                    child: Card(
                      elevation: 5,
                      child: InkWell(
                        splashColor: Colors.grey,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => QuizPage()),
                          );
                        },
                        child: ListTile(
                          title: Text(
                            "Quiz",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          leading: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.quiz,
                                color: Theme.of(context).primaryColor,
                              ),
                            ],
                          ),
                          subtitle: const Text('Take a quiz'),
                          trailing: const Icon(Icons.navigate_next),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionButton(BuildContext context, String label, Widget route) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => route),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(327, 50),
        backgroundColor: Color(0xffFF815E),
        elevation: 0,
        foregroundColor: Color.fromARGB(255, 0, 0, 0),
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(fontSize: 18.0),
      ),
    );
  }
}

class SurveyPage extends StatefulWidget {
  @override
  _SurveyPageState createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  Map<String, double> questionScores = {
    'recycle': 0.0,
    'reusable_bags': 0.0,
    'commute': 0.0,
    'composting': 0.0,
    'plant_based_meals': 0.0,
    'clean_up_events': 0.0,
    'water_usage_reduction': 0.0,
    'electronic_waste_disposal': 0.0,
  };

  Map<String, dynamic> selectedOptions = {
    'recycle': null,
    'reusable_bags': null,
    'commute': null,
    'composting': null,
    'plant_based_meals': null,
    'clean_up_events': null,
    'water_usage_reduction': null,
    'electronic_waste_disposal': null,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Take a Survey"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildSurveyQuestion('How often do you recycle?', 'recycle'),
            SizedBox(
              height: 15,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            _buildSurveyQuestion(
                'How often do you use reusable bags when shopping?',
                'reusable_bags'),
            SizedBox(
              height: 15,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            _buildSurveyQuestion(
              'What is your mode of transportation?',
              'commute',
              isCommutingQuestion: true,
            ),
            SizedBox(
              height: 15,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            _buildSurveyQuestion(
                'How often do you compost organic waste at home?',
                'composting'),
            SizedBox(
              height: 15,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            _buildSurveyQuestion('How often do you consume plant-based meals?',
                'plant_based_meals'),
            SizedBox(
              height: 15,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            _buildSurveyQuestion(
                'How often do you participate in local clean-up events?',
                'clean_up_events'),
            SizedBox(
              height: 15,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            _buildSurveyQuestion(
                'How often do you actively reduce water usage at home?',
                'water_usage_reduction'),
            SizedBox(
              height: 15,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            _buildSurveyQuestion(
                'How often do you dispose of electronic waste responsibly?',
                'electronic_waste_disposal'),
            SizedBox(height: 30.0),
            ElevatedButton(
              style: buttonPrimary,
              onPressed: () {
                double totalScore = calculateTotalScore();
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Your Sustainability Score"),
                      content: Text("Your score is: $totalScore out of 8.0 "),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("OK"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Submit', style: TextStyle(fontSize: 24.0)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSurveyQuestion(String question, String key,
      {bool isCommutingQuestion = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.0),
        Text(
          question,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        DropdownButtonFormField<dynamic>(
          onChanged: (value) {
            setState(() {
              selectedOptions[key] = value;
              if (!isCommutingQuestion) {
                questionScores[key] = calculateScore(value);
              } else {
                questionScores[key] = calculateCommutingScore(value);
              }
            });
          },
          value: selectedOptions[key],
          items: isCommutingQuestion
              ? [
                  DropdownMenuItem<dynamic>(
                    value: 'Walk',
                    child: Text('Walk'),
                  ),
                  DropdownMenuItem<dynamic>(
                    value: 'Bike',
                    child: Text('Bike'),
                  ),
                  DropdownMenuItem<dynamic>(
                    value: 'Public Transport',
                    child: Text('Public Transport'),
                  ),
                  DropdownMenuItem<dynamic>(
                    value: 'Drive Alone',
                    child: Text('Drive Alone'),
                  ),
                ]
              : [
                  DropdownMenuItem<dynamic>(
                    value: 'Always',
                    child: Text('Always'),
                  ),
                  DropdownMenuItem<dynamic>(
                    value: 'Often',
                    child: Text('Often'),
                  ),
                  DropdownMenuItem<dynamic>(
                    value: 'Sometimes',
                    child: Text('Sometimes'),
                  ),
                  DropdownMenuItem<dynamic>(
                    value: 'Rarely',
                    child: Text('Rarely'),
                  ),
                  DropdownMenuItem<dynamic>(
                    value: 'Never',
                    child: Text('Never'),
                  ),
                ],
        ),
      ],
    );
  }

  double calculateScore(String value) {
    switch (value) {
      case 'Always':
        return 1.0;
      case 'Often':
        return 0.75;
      case 'Sometimes':
        return 0.5;
      case 'Rarely':
        return 0.25;
      case 'Never':
        return 0.0;
      default:
        return 0.0;
    }
  }

  double calculateCommutingScore(String value) {
    switch (value) {
      case 'Walk':
        return 1.0;
      case 'Bike':
        return 0.75;
      case 'Public Transport':
        return 0.5;
      case 'Drive Alone':
        return 0.25;
      default:
        return 0.0;
    }
  }

  double calculateTotalScore() {
    double totalScore = 0.0;
    questionScores.forEach((key, value) {
      totalScore += value;
    });
    return totalScore;
  }
}

class CarbonCalculator extends StatefulWidget {
  @override
  _CarbonCalculatorState createState() => _CarbonCalculatorState();
}

class _CarbonCalculatorState extends State<CarbonCalculator> {
  TextEditingController electricityController = TextEditingController();
  TextEditingController gasController = TextEditingController();
  TextEditingController carMileageController = TextEditingController();
  double carbonFootprint = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 189, 235, 191),
      appBar: AppBar(
        title: Text("Carbon Footprint Calculator"),
        titleTextStyle: TextStyle(color: Colors.pink, fontSize: 20.0),
        backgroundColor: Color.fromARGB(255, 180, 233, 182),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: electricityController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Monthly Electricity Usage (kWh)',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: gasController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Monthly Gas Usage (Therms)',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: carMileageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Monthly Car Mileage (miles)',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              style: buttonPrimary,
              onPressed: () {
                calculateCarbonFootprint();
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Your estimated carbon footprint is:',
              style: TextStyle(fontSize: 18.0, color: Colors.pink),
            ),
            Text(
              '$carbonFootprint metric tons CO2e/month',
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink),
            ),
          ],
        ),
      ),
    );
  }

  void calculateCarbonFootprint() {
    double electricityUsage =
        double.tryParse(electricityController.text) ?? 0.0;
    double gasUsage = double.tryParse(gasController.text) ?? 0.0;
    double carMileage = double.tryParse(carMileageController.text) ?? 0.0;

    const double electricityCO2Factor = 0.0006;
    const double gasCO2Factor = 0.0053;
    const double carCO2Factor = 0.404;

    double gasUsageKWh = gasUsage * 29.3;

    double electricityFootprint = electricityUsage * electricityCO2Factor;
    double gasFootprint = gasUsageKWh * electricityCO2Factor;
    double carFootprint = carMileage * carCO2Factor * 0.001;

    double totalCarbonFootprint =
        electricityFootprint + gasFootprint + carFootprint;

    carbonFootprint = double.parse(totalCarbonFootprint.toStringAsFixed(4));
    setState(() {
      carbonFootprint = carbonFootprint;
    });
  }
}

class EducationalResources extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('Educational Resources'),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: [
          _buildResourceTile(
              title: 'Article',
              onTap: () => _launchURL(
                  'https://en.m.wikipedia.org/wiki/Sustainable_living'),
              tileColor: Colors.greenAccent,
              iconData: Icons.school),
          Divider(
            height: 10,
            thickness: 3,
          ),
          _buildResourceTile(
              title: 'Video',
              onTap: () => _navigateToVideoPlayer(context),
              tileColor: Colors.greenAccent,
              iconData: Icons.play_arrow),
          Divider(
            height: 10,
            thickness: 3,
          ),
          _buildResourceTile(
              title: 'Official Website',
              onTap: () => _launchURL(
                  'https://sites.google.com/view/bingenx/home?authuser=0'),
              tileColor: Colors.greenAccent,
              iconData: Icons.web)
        ],
      ),
    );
  }

  Widget _buildResourceTile({
    required String title,
    required VoidCallback onTap,
    Color tileColor = Colors.white,
    IconData iconData = Icons.arrow_right,
  }) {
    return ListTile(
      leading: Icon(iconData, color: Colors.white),
      title: Text(title, style: TextStyle(fontSize: 18)),
      trailing: Icon(Icons.chevron_right),
      onTap: onTap,
      tileColor: tileColor,
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _navigateToVideoPlayer(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => VideoPlayer()),
    );
  }
}

class VideoPlayer extends StatefulWidget {
  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late YoutubePlayerController _controller;
  bool _isPlayerReady = false;
  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'QpuEzp9i4Kg',
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
      ),
    );
    _controller.addListener(listener);
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video"),
      ),
      body: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.green,
        progressColors: const ProgressBarColors(
          playedColor: Colors.green,
          handleColor: Colors.greenAccent,
        ),
        onReady: () {
          _isPlayerReady = true;
        },
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentQuestionIndex = 0;

  int _correctAnswers = 0;
  List<Map<String, dynamic>> _questions = [
    {
      'questionText':
          'Q1. What is the primary goal of sustainable development?',
      'answers': [
        'Economic growth',
        'Environmental conservation',
        'Social equity',
        'All of the above'
      ],
      'correctAnswer': 3,
    },
    {
      'questionText':
          'Q2. Which of the following is a renewable energy source?',
      'answers': ['Coal', 'Natural Gas', 'Solar Power', 'Nuclear Power'],
      'correctAnswer': 2,
    },
    {
      'questionText':
          'Q3. What is the purpose of the circular economy concept?',
      'answers': [
        'To reduce waste and pollution',
        'To promote economic growth',
        'To maximize resource extraction',
        'None of the above'
      ],
      'correctAnswer': 0,
    },
    {
      'questionText':
          'Q4. Which of the following is a sustainable farming practice?',
      'answers': [
        'Monoculture',
        'Heavy pesticide use',
        'Crop rotation',
        'Clearing large areas of land for farming'
      ],
      'correctAnswer': 2,
    },
    {
      'questionText':
          'Q5. What is the main principle behind sustainable living?',
      'answers': [
        'Using resources without limits',
        'Meeting the needs of the present without compromising the ability of future generations to meet their own needs',
        'Exploiting natural resources for short-term gain',
        'None of the above'
      ],
      'correctAnswer': 1,
    },
    {
      'questionText':
          'Q6. Which of the following is NOT a benefit of sustainable development?',
      'answers': [
        'Reduced environmental impact',
        'Improved quality of life',
        'Increased resource depletion',
        'Enhanced economic stability'
      ],
      'correctAnswer': 2,
    },
    {
      'questionText':
          'Q7. What is the role of technology in sustainable development?',
      'answers': [
        'To create more pollution',
        'To find new ways to exploit resources',
        'To improve efficiency and reduce waste',
        'None of the above'
      ],
      'correctAnswer': 2,
    },
    {
      'questionText':
          'Q8. Which of the following is a characteristic of a sustainable city?',
      'answers': [
        'High levels of air pollution',
        'Dependence on fossil fuels',
        'Efficient public transportation systems',
        'Lack of green spaces'
      ],
      'correctAnswer': 2,
    },
    {
      'questionText':
          'Q9. How can individuals contribute to sustainable development?',
      'answers': [
        'By wasting resources',
        'By using public transportation',
        'By buying single-use plastics',
        'None of the above'
      ],
      'correctAnswer': 1,
    },
    {
      'questionText':
          'Q10. Which of the following is a key component of sustainable development?',
      'answers': [
        'Profit maximization',
        'Social inequality',
        'Environmental protection',
        'All of the above'
      ],
      'correctAnswer': 2,
    },
  ];

  void _answerQuestion(int selectedIndex) {
    if (_currentQuestionIndex < _questions.length) {
      int correctAnswerIndex =
          _questions[_currentQuestionIndex]['correctAnswer'];

      if (selectedIndex == correctAnswerIndex) {
        _correctAnswers++;
      }
      setState(() {
        _currentQuestionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sustainable Development Quiz'),
        backgroundColor: Color.fromARGB(255, 113, 180, 236),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'lib/assets/quiz.jpeg',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          _currentQuestionIndex < _questions.length
              ? _buildQuestion()
              : _buildResult(),
        ],
      ),
    );
  }

  Widget _buildQuestion() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 59.10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              _questions[_currentQuestionIndex]['questionText'],
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          ...(_questions[_currentQuestionIndex]['answers'] as List<String>).map(
            (answer) {
              int answerIndex =
                  _questions[_currentQuestionIndex]['answers'].indexOf(answer);
              return Column(
                children: [
                  ElevatedButton(
                    style: buttonPrimary,
                    onPressed: () => _answerQuestion(answerIndex),
                    child: Text(answer),
                  ),
                  SizedBox(height: 25),
                ],
              );
            },
          ).toList(),
        ],
      ),
    );
  }

  Widget _buildResult() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'QUIZ COMPLETED!',
            style: TextStyle(
                fontSize: 24,
                color: Colors.purple,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            'You answered $_correctAnswers out of ${_questions.length} questions correctly.',
            style: TextStyle(
                fontSize: 18,
                color: Colors.purple,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenSate();
}

class _ChatScreenSate extends State<ChatScreen> {
  TextEditingController _userInput = TextEditingController();

  static const apiKey = "";

  final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);

  final List<Message> _messages = [];

  Future<void> sendMessage() async {
    final message = _userInput.text;

    setState(() {
      _messages
          .add(Message(isUser: true, message: message, date: DateTime.now()));
    });

    final content = [Content.text(message)];
    final response = await model.generateContent(content);

    setState(() {
      _messages.add(Message(
          isUser: false, message: response.text ?? "", date: DateTime.now()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 130, 188, 132),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 130, 188, 132),
        title: Text('Chatbot'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20.0),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: _messages.length,
                    itemBuilder: (context, index) {
                      final message = _messages[index];
                      return Messages(
                          isUser: message.isUser,
                          message: message.message,
                          date: DateFormat('HH:mm').format(message.date));
                    })),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 15,
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      controller: _userInput,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          label: Text('Enter Your Query')),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      padding: EdgeInsets.all(12),
                      iconSize: 30,
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(CircleBorder())),
                      onPressed: () {
                        sendMessage();
                        _userInput.clear();
                      },
                      icon: Icon(Icons.send))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Message {
  final bool isUser;
  final String message;
  final DateTime date;

  Message({required this.isUser, required this.message, required this.date});
}

class Messages extends StatelessWidget {
  final bool isUser;
  final String message;
  final String date;

  const Messages(
      {super.key,
      required this.isUser,
      required this.message,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(vertical: 15)
          .copyWith(left: isUser ? 100 : 10, right: isUser ? 10 : 100),
      decoration: BoxDecoration(
          color: isUser ? Colors.blueAccent : Colors.grey.shade400,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: isUser ? Radius.circular(10) : Radius.zero,
              topRight: Radius.circular(10),
              bottomRight: isUser ? Radius.zero : Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message,
            style: TextStyle(
                fontSize: 16, color: isUser ? Colors.white : Colors.black),
          ),
          Text(
            date,
            style: TextStyle(
              fontSize: 10,
              color: isUser ? Colors.white : Colors.black,
            ),
          )
        ],
      ),
    );
  }
}

class sdg extends StatelessWidget {
  final List<Map<String, dynamic>> sdgGoals = [
    {
      "goal": "No Poverty",
      "icon": Icons.sentiment_very_satisfied,
      "info":
          "End poverty in all its forms everywhere. By 2030, eradicate extreme poverty for all people everywhere, currently measured as people living on less than 1.25 a day."
    },
    {
      "goal": "Zero Hunger",
      "icon": Icons.free_breakfast,
      "info":
          "End hunger, achieve food security and improved nutrition, and promote sustainable agriculture. By 2030, end hunger and ensure access by all people, in particular the poor and people in vulnerable situations, including infants, to safe, nutritious and sufficient food all year round."
    },
    {
      "goal": "Good Health and Well-being",
      "icon": Icons.favorite,
      "info":
          "Ensure healthy lives and promote well-being for all at all ages. By 2030, reduce the global maternal mortality ratio to less than 70 per 100,000 live births. End the epidemics of AIDS, tuberculosis, malaria and neglected tropical diseases. Reduce by one-third premature mortality from non-communicable diseases through prevention and treatment and promote mental health and well-being."
    },
    {
      "goal": "Quality Education",
      "icon": Icons.school,
      "info":
          "Ensure inclusive and equitable quality education and promote lifelong learning opportunities for all. By 2030, ensure that all girls and boys complete free, equitable and quality primary and secondary education leading to relevant and effective learning outcomes. By 2030, ensure that all girls and boys have access to quality early childhood development, care and pre-primary education so that they are ready for primary education."
    },
    {
      "goal": "Gender Equality",
      "icon": Icons.group,
      "info":
          "Achieve gender equality and empower all women and girls. End all forms of discrimination against all women and girls everywhere. Eliminate all forms of violence against all women and girls in the public and private spheres, including trafficking and sexual and other types of exploitation."
    },
    {
      "goal": "Clean Water and Sanitation",
      "icon": Icons.local_drink,
      "info":
          "Ensure availability and sustainable management of water and sanitation for all. By 2030, achieve universal and equitable access to safe and affordable drinking water for all. By 2030, achieve access to adequate and equitable sanitation and hygiene for all and end open defecation, paying special attention to the needs of women and girls and those in vulnerable situations."
    },
    {
      "goal": "Affordable and Clean Energy",
      "icon": Icons.lightbulb_outline,
      "info":
          "Ensure access to affordable, reliable, sustainable and modern energy for all. By 2030, ensure universal access to affordable, reliable and modern energy services. Increase substantially the share of renewable energy in the global energy mix."
    },
    {
      "goal": "Decent Work and Economic Growth",
      "icon": Icons.work,
      "info":
          "Promote sustained, inclusive and sustainable economic growth, full and productive employment and decent work for all. By 2030, achieve full and productive employment and decent work for all women and men, including for young people and persons with disabilities, and equal pay for work of equal value."
    },
    {
      "goal": "Industry, Innovation, and Infrastructure",
      "icon": Icons.settings,
      "info":
          "Build resilient infrastructure, promote inclusive and sustainable industrialization and foster innovation. By 2030, develop quality, reliable, sustainable and resilient infrastructure, including regional and trans-border infrastructure, to support economic development and human well-being, with a focus on affordable and equitable access for all."
    },
    {
      "goal": "Reduced Inequality",
      "icon": Icons.people_outline,
      "info":
          "Reduce inequality within and among countries. By 2030, progressively achieve and sustain income growth of the bottom 40 per cent of the population at a rate higher than the national average."
    },
    {
      "goal": "Sustainable Cities and Communities",
      "icon": Icons.location_city,
      "info":
          "Make cities and human settlements inclusive, safe, resilient and sustainable. By 2030, ensure access for all to adequate, safe and affordable housing and basic services and upgrade slums. Provide access to safe, affordable, accessible and sustainable transport systems for all, improving road safety, notably by expanding public transport, with special attention to the needs of those in vulnerable situations, women, children, persons with disabilities and older persons."
    },
    {
      "goal": "Responsible Consumption and Production",
      "icon": Icons.shopping_cart,
      "info":
          "Ensure sustainable consumption and production patterns. By 2030, achieve the sustainable management and efficient use of natural resources. By 2030, halve per capita global food waste at the retail and consumer levels and reduce food losses along production and supply chains, including post-harvest losses."
    },
    {
      "goal": "Climate Action",
      "icon": Icons.wb_sunny,
      "info":
          "Take urgent action to combat climate change and its impacts. Implement the commitment undertaken by developed-country parties to the United Nations Framework Convention on Climate Change to a goal of mobilizing jointly 100 billion annually by 2020 from all sources to address the needs of developing countries in the context of meaningful mitigation actions and transparency on implementation and fully operationalize the Green Climate Fund through its capitalization as soon as possible."
    },
    {
      "goal": "Life Below Water",
      "icon": Icons.directions_boat,
      "info":
          "Conserve and sustainably use the oceans, seas and marine resources for sustainable development. By 2025, prevent and significantly reduce marine pollution of all kinds, in particular from land-based activities, including marine debris and nutrient pollution."
    },
    {
      "goal": "Life on Land",
      "icon": Icons.terrain,
      "info":
          "Protect, restore and promote sustainable use of terrestrial ecosystems, sustainably manage forests, combat desertification, and halt and reverse land degradation and halt biodiversity loss. Take urgent and significant action to reduce the degradation of natural habitats, halt the loss of biodiversity and, by 2020, protect and prevent the extinction of threatened species."
    },
    {
      "goal": "Peace, Justice, and Strong Institutions",
      "icon": Icons.gavel,
      "info":
          "Promote peaceful and inclusive societies for sustainable development, provide access to justice for all and build effective, accountable and inclusive institutions at all levels. By 2030, significantly reduce all forms of violence and related death rates everywhere. Ensure equal access to justice for all and build effective, accountable and inclusive institutions at all levels."
    },
    {
      "goal": "Partnerships for the Goals",
      "icon": Icons.group_work,
      "info":
          "Strengthen the means of implementation and revitalize the global partnership for sustainable development. Enhance international support for implementing effective and targeted capacity-building in developing countries to support national plans to implement all the sustainable development goals, including through North-South, South-South and triangular cooperation."
    },
  ];

  _launchURL() async {
    const url = 'https://sdgs.un.org/goals';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDG Goals'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: sdgGoals.length + 1,
        itemBuilder: (context, index) {
          if (index < sdgGoals.length) {
            return ExpansionTile(
              leading: Icon(
                sdgGoals[index]['icon'],
                color: Colors.green,
              ),
              title: Text(
                sdgGoals[index]['goal'],
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    sdgGoals[index]['info'],
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            );
          } else {
            return ListTile(
              title: Text(
                'Know More',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                ),
              ),
              onTap: _launchURL,
            );
          }
        },
      ),
    );
  }
}
