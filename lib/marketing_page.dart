import 'package:flutter/material.dart';

class MarketingPage extends StatelessWidget {
  const MarketingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('বাজারজাতকরণ'),
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
                  'বাজারজাতকরণ',
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),

                // Marketing Image
                Container(
                  width: 300, // Increased width to match CarePage style
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/broccoli_marketing.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 16),
                ),
                const SizedBox(height: 20),

                // Main Content
                Text(
                  'ব্রকলি বাজারজাতকরণ হলো উৎপাদন থেকে বিক্রয় পর্যন্ত প্রক্রিয়া, যা বাংলাদেশে কৃষকদের আর্থিক সুবিধা নিশ্চিত করে। সঠিক পরিকল্পনা ও বাজার বিশ্লেষণ দ্বারা ব্রকলির চাহিদা বাড়ানো সম্ভব। নিচে বিস্তারিত নির্দেশনা দেওয়া হলো।',
                  style: (Theme.of(context).textTheme.bodyMedium ??
                          const TextStyle())
                      .copyWith(
                    color: Colors.green[800],
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 20),

                // Marketing Tips List
                Text(
                  'বাজারজাতকরণের নির্দেশনা:',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildMarketingTip(context,
                        'প্যাকেজিং: ঠান্ডা এবং সরঞ্জামযুক্ত প্যাকেজিং ব্যবহার করুন।'),
                    _buildMarketingTip(context,
                        'বাজার গবেষণা: স্থানীয় হাট বা সুপারমার্কেটে চাহিদা যাচাই করুন।'),
                    _buildMarketingTip(context,
                        'পরিবহন: ঠান্ডা চেইন বজায় রাখুন বিক্রয়ের জন্য।'),
                    _buildMarketingTip(context,
                        'মূল্য নির্ধারণ: প্রতিযোগিতামূলক মূল্য স্থির করুন।'),
                  ],
                ),
                const SizedBox(height: 20),

                // Additional Resources
                Text(
                  'আরও তথ্যের জন্য "ফল পাকা" এবং "পরিচর্যা" বিভাগগুলো দেখুন। স্থানীয় কৃষি বাজারের সঙ্গে যোগাযোগ করুন।',
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

  Widget _buildMarketingTip(BuildContext context, String text) {
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
