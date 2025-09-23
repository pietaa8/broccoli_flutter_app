import 'package:flutter/material.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('আবহাওয়ার অবস্থা'),
        backgroundColor: Colors.green[700],
        elevation: 4,
      ),
      body: Stack(
        children: [
          // Subtle background pattern (match homepage)
          Positioned.fill(
            child: Opacity(
              opacity: 0.2,
              child: Image.asset(
                'assets/images/farm_pattern.jpg',
                fit: BoxFit.cover,
                repeat: ImageRepeat.repeat,
              ),
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Title
                Text(
                  'আবহাওয়ার অবস্থা',
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),

                // Weather Image
                Container(
                  width: 300, // Increased width to match CarePage style
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/weather_condition.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 16),
                ),
                const SizedBox(height: 20),

                // Main Content
                Text(
                  'ব্রকলি চাষের জন্য আবহাওয়া অত্যন্ত গুরুত্বপূর্ণ। বাংলাদেশের উষ্ণ ও আর্দ্র আবহাওয়ায় সঠিক তাপমাত্রা ও বৃষ্টির পরিচালনা প্রয়োজন। নিচে বিস্তারিত নির্দেশনা দেওয়া হলো।',
                  style: (Theme.of(context).textTheme.bodyMedium ??
                          const TextStyle())
                      .copyWith(
                    color: Colors.green[800],
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 20),

                // Weather Tips List
                Text(
                  'আবহাওয়া পরিচালনার নির্দেশনা:',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildWeatherTip(
                        context, 'তাপমাত্রা: ১৮-২৪°C বজায় রাখুন।'),
                    _buildWeatherTip(
                        context, 'বৃষ্টি: অতিরিক্ত পানি থেকে রক্ষা করুন।'),
                    _buildWeatherTip(
                        context, 'আলো: প্রতিদিন ৬-৮ ঘণ্টা সূর্যালোক প্রয়োজন।'),
                    _buildWeatherTip(
                        context, 'মৌসুম: শীতকালীন চাষ সবচেয়ে উপযোগী।'),
                  ],
                ),
                const SizedBox(height: 20),

                // Additional Resources
                Text(
                  'আরও তথ্যের জন্য "মাটির অবস্থা" এবং "বৃদ্ধি" বিভাগগুলো দেখুন। স্থানীয় আবহাওয়া পূর্বাভাস পরীক্ষা করুন।',
                  style: (Theme.of(context).textTheme.bodyMedium ??
                          const TextStyle())
                      .copyWith(
                    color: Colors.green[800],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWeatherTip(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.lightbulb_outline, color: Colors.green, size: 16),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style:
                  (Theme.of(context).textTheme.bodyMedium ?? const TextStyle())
                      .copyWith(
                color: Colors.green[800],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
