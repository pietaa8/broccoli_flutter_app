import 'package:flutter/material.dart';

class SeedQualityPage extends StatelessWidget {
  const SeedQualityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('বীজের গুণমান'),
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
                  'বীজের গুণমান',
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),

                // Seed Quality Image
                Container(
                  width: 300, // Increased width to match CarePage style
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/seed_quality.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 16),
                ),
                const SizedBox(height: 20),

                // Main Content
                Text(
                  'ব্রকলির উৎপাদনের জন্য উচ্চমানের বীজ নির্বাচন অত্যন্ত গুরুত্বপূর্ণ। গুণমান বীজ সঠিক পরীক্ষা ও সংরক্ষণের মাধ্যমে বাংলাদেশের কৃষকরা ভালো ফলন পেতে পারেন। নিচে বিস্তারিত নির্দেশনা দেওয়া হলো।',
                  style: (Theme.of(context).textTheme.bodyMedium ??
                          const TextStyle())
                      .copyWith(
                    color: Colors.green[800],
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 20),

                // Seed Quality Tips List
                Text(
                  'বীজ নির্বাচন ও পরীক্ষার নির্দেশনা:',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSeedTip(context,
                        'নির্বাচন: সরকারী সরবরাহকৃত বা প্রত্যয়িত বীজ বেছে নিন।'),
                    _buildSeedTip(
                        context, 'পরীক্ষা: জলের মধ্যে ভাসমান বীজ বাদ দিন।'),
                    _buildSeedTip(
                        context, 'সংরক্ষণ: শুষ্ক ও ঠান্ডা জায়গায় রাখুন।'),
                    _buildSeedTip(
                        context, 'জীবনকাল: ১-২ বছরের মধ্যে ব্যবহার করুন।'),
                  ],
                ),
                const SizedBox(height: 20),

                // Additional Resources
                Text(
                  'আরও তথ্যের জন্য "বৃদ্ধি" এবং "পরিচর্যা" বিভাগগুলো দেখুন। স্থানীয় কৃষি বিশেষজ্ঞের পরামর্শ নিন।',
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

  Widget _buildSeedTip(BuildContext context, String text) {
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
