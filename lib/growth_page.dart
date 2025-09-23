import 'package:flutter/material.dart';

class GrowthPage extends StatelessWidget {
  const GrowthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('বৃদ্ধি'),
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
                  'বৃদ্ধি',
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),

                // Growth Image
                Container(
                  width: 300, // Increased width to match CarePage style
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/grown_broccoli.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 16),
                ),
                const SizedBox(height: 20),

                // Main Content
                Text(
                  'ব্রকলির বৃদ্ধি প্রক্রিয়া শুরু হয় বীজ থেকে এবং ৪-৬ সপ্তাহে গাছটি বৃদ্ধি শুরু করে। কলি গঠনের পর্যায়ে সঠিক পরিচর্যা এবং আবহাওয়া ব্রকলির উন্নতি নিশ্চিত করে। বাংলাদেশের আর্দ্র আবহাওয়ায় এই প্রক্রিয়া সাবধানতার সাথে পরিচালিত করতে হয়। নিচে বিস্তারিত নির্দেশনা দেওয়া হলো।',
                  style: (Theme.of(context).textTheme.bodyMedium ??
                          const TextStyle())
                      .copyWith(
                    color: Colors.green[800],
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 20),

                // Growth Tips List
                Text(
                  'বৃদ্ধির নির্দেশনা:',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildGrowthTip(
                        context, 'বীজ বপন: গভীরতা ১-২ সেমি, ভালো নিষেক করুন।'),
                    _buildGrowthTip(context, 'তাপমাত্রা: ১৮-২৪°C বজায় রাখুন।'),
                    _buildGrowthTip(context,
                        'সার: নিয়মিত নাইট্রোজেন ও পটাশিয়াম যুক্ত সার দিন।'),
                    _buildGrowthTip(
                        context, 'পর্যবেক্ষণ: ৪০-৫০ দিনে কলি গঠন দেখুন।'),
                  ],
                ),
                const SizedBox(height: 20),

                // Additional Resources
                Text(
                  'আরও তথ্যের জন্য "ফুল/ফল" এবং "পরিচর্যা" বিভাগগুলো দেখুন। স্থানীয় কৃষি বিশেষজ্ঞের পরামর্শ নিন।',
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

  Widget _buildGrowthTip(BuildContext context, String text) {
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
