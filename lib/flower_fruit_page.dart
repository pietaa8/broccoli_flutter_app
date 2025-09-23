import 'package:flutter/material.dart';

class FlowerFruitPage extends StatelessWidget {
  const FlowerFruitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ফুল/ফল'),
        backgroundColor: Color.fromARGB(255, 119, 208, 124),
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
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Flower/Fruit Image
                  Container(
                    width: 500,
                    height: 500,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/broccoli_flower.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'ফুল/ফল',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'ব্রকলির ফুল থেকে ব্রকলি হওয়ার প্রক্রিয়া শুরু হয় ফুলের কলি গঠনের সাথে, যা ৪-৬ সপ্তাহে বীজ থেকে গাছের উৎপাদন পর্যায়ে পৌঁছায়। কলি হলো অপরিপক্ব ফুলের গুচ্ছ, যা পুষ্টিকর এবং ফুল ফোটার আগে সংগ্রহ করা হয়। উপযুক্ত তাপমাত্রা (১৮-২৪°C), নিয়মিত পানি এবং নাইট্রোজেনযুক্ত মাটি কলির ঘন গঠনকে উৎসাহিত করে। ৫০-১০০ দিনে কলি সংগ্রহ করা উচিত, যখন তা সবুজ এবং কঠিন থাকে। বাংলাদেশের আর্দ্র আবহাওয়ায় মনসূন ও কীটনাশকের সংরক্ষণ প্রয়োজন। ফুল ফোটলে বীজ উৎপাদন শুরু হয়, কিন্তু পুষ্টি কমে যায়।',
                    style: (Theme.of(context).textTheme.bodyMedium ??
                            const TextStyle())
                        .copyWith(
                      color: Colors.green[800],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
