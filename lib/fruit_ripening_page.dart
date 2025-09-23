import 'package:flutter/material.dart';

class FruitRipeningPage extends StatelessWidget {
  const FruitRipeningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ফল পাকা'),
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
                  'ফল পাকা',
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),

                // Fruit Ripening Image
                Container(
                  width: 300, // Increased width to match CarePage style
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/fruit_ripening.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 16),
                ),
                const SizedBox(height: 20),

                // Main Content
                Text(
                  'ব্রকলির ফল (কলা) পাকা হওয়ার প্রক্রিয়া গুরুত্বপূর্ণ, বিশেষ করে বাংলাদেশের শীতকালীন আবহাওয়ায়। কলা ৬০-১০০ দিনে পাকা হয়। কলা শক্ত এবং ঘন থাকলে সংগ্রহ করুন, ফুল ফোটার আগে। নিচে বিস্তারিত নির্দেশনা দেওয়া হলো।',
                  style: (Theme.of(context).textTheme.bodyMedium ??
                          const TextStyle())
                      .copyWith(
                    color: Colors.green[800],
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 20),

                // Ripening Tips List
                Text(
                  'ফল পাকার নির্দেশনা:',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildRipeningTip(context,
                        'সময়: ৬০-১০০ দিন পর কলা শক্ত এবং সবুজ থাকলে সংগ্রহ করুন।'),
                    _buildRipeningTip(context,
                        'কাটা: মূল কলা কাটার পর সাইড শুট গজাবে, সেগুলো পরে সংগ্রহ করুন।'),
                    _buildRipeningTip(context,
                        'জলাপোষণ: সপ্তাহে ১-১.৫ ইঞ্চি জল দিন, মাটি শুকিয়ে গেলে।'),
                    _buildRipeningTip(context,
                        'সংরক্ষণ: ফ্রিজে ২-৪ সপ্তাহ রাখুন, আর্দ্র কাগজে মোড়ানো।'),
                  ],
                ),
                const SizedBox(height: 20),

                // Additional Resources
                Text(
                  'আরও তথ্যের জন্য "ফুল/ফল" এবং "বাজারজাতকরণ" বিভাগগুলো দেখুন। স্থানীয় কৃষি বিশেষজ্ঞের পরামর্শ নিন।',
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

  Widget _buildRipeningTip(BuildContext context, String text) {
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
