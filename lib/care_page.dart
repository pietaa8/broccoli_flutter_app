import 'package:flutter/material.dart';

class CarePage extends StatelessWidget {
  const CarePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('পরিচর্যা'),
        backgroundColor: Colors.green[700],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Title
            Text(
              'পরিচর্যা',
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Image Placeholder (Updated with increased width)
            Container(
              width: 800, // Increased width to 500 (adjust as needed)
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: AssetImage('assets/images/broccoli_care.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              margin: const EdgeInsets.symmetric(vertical: 16),
            ),
            const SizedBox(height: 20),

            // Main Content
            Text(
              'ব্রকলি চাষে সঠিক পরিচর্যা অত্যন্ত গুরুত্বপূর্ণ। বাংলাদেশের উষ্ণ ও আর্দ্র আবহাওয়ায় ব্রকলি চাষ করতে হলে নিয়মিত জলাপোষণ, পোকামাকড় নিয়ন্ত্রণ, এবং পুষ্টিকর মাটি প্রস্তুত করা প্রয়োজন। নিচে বিস্তারিত নির্দেশনা দেওয়া হলো।',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),

            // Care Tips List
            Text(
              'পরিচর্যার নির্দেশনা:',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildCareTip(context,
                    'জলাপোষণ: সপ্তাহে ২-৩ বার জল দিন, মাটি শুকিয়ে গেলে।'),
                _buildCareTip(context,
                    'সার: নাইট্রোজেন ও পটাশিয়াম যুক্ত সার ব্যবহার করুন।'),
                _buildCareTip(context,
                    'পোকামাকড়: সার্বক্ষণিক পরীক্ষা করুন এবং প্রাকৃতিক পদ্ধতি ব্যবহার করুন।'),
                _buildCareTip(context, 'ফলন: ৬০-৭০ দিনে ফলন প্রাপ্ত হয়।'),
              ],
            ),
            const SizedBox(height: 20),

            // Additional Resources
            Text(
              'আরও তথ্যের জন্য "গাছের বৃদ্ধি" এবং "দুর্বলতা/রোগ" বিভাগগুলো দেখুন। স্থানীয় কৃষি বিশেষজ্ঞের পরামর্শ নিন।',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildCareTip(BuildContext context, String text) {
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
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
