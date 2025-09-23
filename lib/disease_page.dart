import 'package:flutter/material.dart';

class DiseasePage extends StatelessWidget {
  const DiseasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('রোগ'),
        backgroundColor: Colors.green[700],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Title
            Text(
              'রোগ',
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Image Placeholder (to be replaced with actual asset)
            Container(
              width: 300, // Adjustable width
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: AssetImage('assets/images/broccoli_disease.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              margin: const EdgeInsets.symmetric(vertical: 16),
            ),
            const SizedBox(height: 20),

            // Main Content
            Text(
              'ব্রকলি চাষে বিভিন্ন রোগ হতে পারে, বিশেষ করে বাংলাদেশের আর্দ্র আবহাওয়ায়। নিচে কিছু সাধারণ রোগ, তাদের লক্ষণ, এবং নিয়ন্ত্রণের উপায় দেওয়া হলো। নিয়মিত পরীক্ষা এবং প্রাকৃতিক পদ্ধতি ব্যবহার করা গুরুত্বপূর্ণ।',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),

            // Diseases List
            Text(
              'সাধারণ রোগ ও নিয়ন্ত্রণ:',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDiseaseItem(context,
                    'পাউডারি মিলডিউ: সাদা পাউডার যোগ। নিয়ন্ত্রণ: সালফার স্প্রে।'),
                _buildDiseaseItem(context,
                    'ডাউনি মিলডিউ: পাতায় হলুদ দাগ। নিয়ন্ত্রণ: বাতাস প্রবাহ বাড়ান।'),
                _buildDiseaseItem(
                    context, 'রoot রট: শিকড় ক্ষতি। নিয়ন্ত্রণ: ভাল নিষ্কাশন।'),
              ],
            ),
            const SizedBox(height: 20),

            // Additional Advice
            Text(
              'রোগ প্রতিরোধের জন্য "পরিচর্যা" বিভাগে নির্দেশনা অনুসরণ করুন। সন্দেহ হলে স্থানীয় কৃষি বিশেষজ্ঞের সাহায্য নিন।',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildDiseaseItem(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.warning, color: Colors.red, size: 16),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
