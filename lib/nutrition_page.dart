import 'package:flutter/material.dart';

class NutritionPage extends StatelessWidget {
  const NutritionPage({super.key}); // const constructor preserved

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('পুষ্টি'),
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
                  'পুষ্টি',
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),

                // Nutrition Image
                Container(
                  width: 400, // Increased width to match CarePage style
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/broccoli_nutrition.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 16),
                ),
                const SizedBox(height: 20),

                // Main Content
                Text(
                  'ব্রকলি একটি পুষ্টিকর শাকসবজি, যা বিভিন্ন পুষ্টি উপাদানে সমৃদ্ধ। এটি ভিটামিন, খনিজ, এবং অ্যান্টিঅক্সিডেন্টের উৎস, যা বাংলাদেশে স্বাস্থ্যকর খাদ্যাভ্যাসে গুরুত্বপূর্ণ ভূমিকা পালন করে। নিচে বিস্তারিত তথ্য দেওয়া হলো।',
                  style: (Theme.of(context).textTheme.bodyMedium ??
                          const TextStyle())
                      .copyWith(
                    color: Colors.green[800],
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 20),

                // Nutrition Tips List
                Text(
                  'পুষ্টির তথ্য:',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildNutritionTip(
                        context, 'ভিটামিন সি: রোগ প্রতিরোধ ক্ষমতা বাড়ায়।'),
                    _buildNutritionTip(
                        context, 'ভিটামিন কে: হাড়ের স্বাস্থ্যের জন্য উপযোগী।'),
                    _buildNutritionTip(context, 'ফাইবার: পाचন সহায়তা করে।'),
                    _buildNutritionTip(context,
                        'অ্যান্টিঅক্সিডেন্ট: ক্যান্সার প্রতিরোধে সাহায্য করে।'),
                  ],
                ),
                const SizedBox(height: 20),

                // Additional Resources
                Text(
                  'আরও তথ্যের জন্য "ফুল/ফল" এবং "পুষ্টি" বিভাগগুলো দেখুন। স্থানীয় পুষ্টি বিশেষজ্ঞের পরামর্শ নিন।',
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

  Widget _buildNutritionTip(BuildContext context, String text) {
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
