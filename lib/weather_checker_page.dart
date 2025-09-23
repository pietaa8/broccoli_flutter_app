import 'package:flutter/material.dart';

class WeatherCheckerPage extends StatelessWidget {
  const WeatherCheckerPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Static data (hardcoded values)
    const String temperature = "22°C";
    const String humidity = "65%";
    const String weatherCondition = "Clear Sky";

    return Scaffold(
      appBar: AppBar(
        title: const Text('আবহাওয়া চেকার'),
        backgroundColor: Colors.green[700],
        elevation: 4,
      ),
      body: Stack(
        children: [
          // Subtle background pattern (optional)
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
                  'আবহাওয়া চেকার',
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),

                // Weather Image
                Container(
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/weather_condition.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 16),
                ),
                const SizedBox(height: 20),

                // Weather Data Cards
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildWeatherCard(
                      icon: Icons.thermostat,
                      label: 'তাপমাত্রা',
                      value: temperature,
                      context: context,
                    ),
                    _buildWeatherCard(
                      icon: Icons.opacity,
                      label: 'আর্দ্রতা',
                      value: humidity,
                      context: context,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                _buildWeatherCard(
                  icon: Icons.cloud,
                  label: 'আবহাওয়া',
                  value: weatherCondition,
                  context: context,
                  isFullWidth: true,
                ),
                const SizedBox(height: 20),

                // Weather Tips List
                Text(
                  'আবহাওয়া পর্যবেক্ষণের নির্দেশনা:',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildWeatherTip(
                        context, 'তাপমাত্রা ১৮-২৪°C আদর্শ ব্রকলির জন্য।'),
                    _buildWeatherTip(context, 'আর্দ্রতা ৫০-৭০% রাখুন।'),
                    _buildWeatherTip(context, 'বৃষ্টি সীমিত রাখুন।'),
                  ],
                ),
                const SizedBox(height: 20),

                // Additional Resources
                Text(
                  'আরও তথ্যের জন্য "আবহাওয়ার অবস্থা" দেখুন। স্থানীয় আবহাওয়া পূর্বাভাস চেক করুন।',
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

  Widget _buildWeatherCard({
    required IconData icon,
    required String label,
    required String value,
    required BuildContext context,
    bool isFullWidth = false,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: isFullWidth ? double.infinity : 140,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(icon, size: 40, color: Colors.green[700]),
            const SizedBox(height: 10),
            Text(
              label,
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
            Text(
              value,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.green[800],
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
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
