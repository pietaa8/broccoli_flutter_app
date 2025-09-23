import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // For Lottie animation
import 'weather_page.dart';
import 'soil_page.dart';
import 'seed_quality_page.dart';
import 'growth_page.dart';
import 'care_page.dart';
import 'flower_fruit_page.dart';
import 'fruit_ripening_page.dart';
import 'disease_page.dart';
import 'bangladesh_agriculture_page.dart';
import 'nutrition_page.dart';
import 'marketing_page.dart';

void main() {
  runApp(const BroccoliApp());
}

class BroccoliApp extends StatelessWidget {
  const BroccoliApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ব্রকলি চাষ',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.green[50], // Soft green background
        fontFamily: 'SolaimanLipi', // Ensure SolaimanLipi is in pubspec.yaml
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 48, 252, 2),
            shadows: [
              Shadow(blurRadius: 4, color: Colors.black26, offset: Offset(2, 2))
            ],
          ),
          headlineMedium: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.black87),
          titleLarge: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.green[800]),
        ),
        cardTheme: CardTheme(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          elevation: 6,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _textAnimationController;
  late Animation<double> _textFadeAnimation;

  final List<Map<String, dynamic>> sections = const [
    {
      'title': 'আবহাওয়ার অবস্থা',
      'icon': Icons.wb_sunny,
      'page': WeatherPage(),
    },
    {
      'title': 'মাটির অবস্থা',
      'icon': Icons.terrain,
      'page': SoilPage(),
    },
    {
      'title': 'বীজের গুণমান',
      'icon': Icons.grass,
      'page': SeedQualityPage(),
    },
    {
      'title': 'বৃদ্ধি',
      'icon': Icons.trending_up,
      'page': GrowthPage(),
    },
    {
      'title': 'পরিচর্যা',
      'icon': Icons.local_florist,
      'page': CarePage(),
    },
    {
      'title': 'ফুল/ফল',
      'icon': Icons.local_florist,
      'page': FlowerFruitPage(),
    },
    {
      'title': 'ফল পাকা',
      'icon': Icons.eco,
      'page': FruitRipeningPage(),
    },
    {
      'title': 'রোগ',
      'icon': Icons.healing,
      'page': DiseasePage(),
    },
    {
      'title': 'বাংলাদেশের কৃষিতে প্রয়োজনীয়তা',
      'icon': Icons.agriculture,
      'page': BangladeshAgriculturePage(),
    },
    {
      'title': 'পুষ্টি',
      'icon': Icons.food_bank,
      'page': NutritionPage(),
    },
    {
      'title': 'বাজারজাতকরণ',
      'icon': Icons.store,
      'page': MarketingPage(),
    },
  ];

  @override
  void initState() {
    super.initState();
    _textAnimationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _textFadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
          parent: _textAnimationController, curve: Curves.easeInOut),
    );
    _textAnimationController.forward();
  }

  @override
  void dispose() {
    _textAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green[700]),
              child: Text(
                'ব্রকলি চাষ',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            ListTile(
              leading: Icon(Icons.info, color: Colors.green[700]),
              title: Text('অ্যাপ সম্পর্কে'),
              onTap: () {
                Navigator.pop(context);
                // Navigate to About page
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.green[700]),
              title: Text('সেটিংস'),
              onTap: () {
                Navigator.pop(context);
                // Navigate to Settings page
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('আবহাওয়া চেকার শীঘ্রই আসছে!')),
          );
        },
        child: Icon(Icons.cloud),
        backgroundColor: Colors.green[700],
      ),
      body: Stack(
        children: [
          // Subtle background pattern
          Positioned.fill(
            child: Opacity(
              opacity: 0.6,
              child: Image.asset(
                'assets/images/farm_pattern.jpg', // Add a farm pattern image
                fit: BoxFit.cover,
                repeat: ImageRepeat.repeat,
              ),
            ),
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 250,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        'assets/images/broccoli_banner.jpg', // Broccoli banner
                        fit: BoxFit.cover,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.green[900]!.withOpacity(0.6),
                              Colors.transparent
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ব্রকলি চাষ',
                              style:
                                  (Theme.of(context).textTheme.headlineLarge ??
                                          const TextStyle())
                                      .copyWith(
                                fontSize: 36, // Slightly larger for prominence
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 16), // Increased spacing
                            FadeTransition(
                              opacity: _textFadeAnimation,
                              child: Text(
                                'ব্রকলি চাষে আপনার সঙ্গী',
                                style:
                                    Theme.of(context).textTheme.headlineLarge,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'বাংলাদেশের কৃষকদের জন্য সেরা গাইড',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(16),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.85,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => sections[index]['page']),
                          );
                        },
                        child: AnimatedScale(
                          scale: 1.0,
                          duration: Duration(milliseconds: 200),
                          child: Card(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.green[50]!,
                                    Colors.green[100]!
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          Colors.green[700]!.withOpacity(0.2),
                                    ),
                                    child: Icon(
                                      sections[index]['icon'],
                                      size: 40,
                                      color: Colors.green[800],
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: Text(
                                      sections[index]['title'],
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    childCount: sections.length,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
