import 'package:flutter/material.dart';

class BangladeshAgriculturePage extends StatelessWidget {
  const BangladeshAgriculturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('বাংলাদেশের কৃষিতে প্রয়োজনীয়তা'),
        backgroundColor: Colors.green[700],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Title
            Text(
              'বাংলাদেশের কৃষিতে প্রয়োজনীয়তা',
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Image Placeholder (to be replaced with actual asset)
            Container(
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: AssetImage('assets/images/broccoli_field.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              margin: const EdgeInsets.symmetric(vertical: 16),
            ),
            const SizedBox(height: 20),

            // Main Content
            Text(
              'বাংলাদেশের কৃষি অর্থনীতিতে ব্রকলি একটি উদীয়মান ফসল হিসেবে গুরুত্বপূর্ণ ভূমিকা পালন করছে। এটি পুষ্টিকর, বাজারে চাহিদা বাড়ছে, এবং স্থানীয় জলবায়ুতে উপযোগী। ব্রকলি ভিটামিন সি, কে, এবং অ্যান্টিঅক্সিডেন্টে সমৃদ্ধ, যা স্বাস্থ্যকর খাদ্যাভাসের জন্য উপযোগী।',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),

            // Benefits List
            Text(
              'ব্রকলির সুবিধা:',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildBenefitItem(context, 'পুষ্টি: ভিটামিন ও খনিজে সমৃদ্ধ।'),
                _buildBenefitItem(
                    context, 'আয় বৃদ্ধি: বৈদেশিক বাজারে রপ্তানির সম্ভাবনা।'),
                _buildBenefitItem(context,
                    'জলবায়ু সামঞ্জস্য: উষ্ণ ও আর্দ্র আবহাওয়ায় চাষযোগ্য।'),
                _buildBenefitItem(context,
                    'স্থানীয় চাহিদা: শহরী এলাকায় জনপ্রিয়তা বাড়ছে।'),
              ],
            ),
            const SizedBox(height: 20),

            // Additional Info
            Text(
              'কৃষকদের জন্য পরামর্শ: ব্রকলি চাষের জন্য মাটির উর্বরতা বজায় রাখুন এবং সময়মতো সেচ প্রদান করুন। আরও তথ্যের জন্য "পরিচর্যা" বিভাগটি দেখুন।',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildBenefitItem(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle, color: Colors.green, size: 16),
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
