import 'package:flutter/material.dart';

class BroccoliVariationPage extends StatelessWidget {
  const BroccoliVariationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Roboto', // Ensure font is added in pubspec.yaml
              bodyColor: Colors.green.shade800,
              displayColor: Colors.green.shade900,
            ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ব্রকলির জাত',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 26,
              color: Colors.white,
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green.shade600, Colors.green.shade900],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          elevation: 10,
          shadowColor: Colors.black54,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                  content: Text('স্থানীয় কৃষি বিশেষজ্ঞের সাথে যোগাযোগ করুন')),
            );
          },
          backgroundColor: Colors.green.shade700,
          child: const Icon(Icons.info_outline, color: Colors.white),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green.shade50, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Stack(
            children: [
              // Subtle background pattern
              Positioned.fill(
                child: Opacity(
                  opacity: 0.1,
                  child: Image.asset(
                    'assets/images/farm_pattern.jpg',
                    fit: BoxFit.cover,
                    repeat: ImageRepeat.repeat,
                  ),
                ),
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Title
                    Text(
                      'ব্রকলির জাত',
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                fontWeight: FontWeight.w800,
                                color: Colors.green.shade900,
                                fontSize: 34,
                              ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 28),

                    // Broccoli Image
                    Container(
                      width: 340,
                      height: 240,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(color: Colors.green.shade300, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 10,
                            offset: const Offset(0, 6),
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/broccoli_varieties.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 20),
                    ),
                    const SizedBox(height: 28),

                    // Main Content
                    Text(
                      'ব্রকলির বিভিন্ন জাত বাংলাদেশের জলবায়ু ও মাটির ধরনের জন্য উপযুক্ত। প্রতিটি জাতের নিজস্ব বৈশিষ্ট্য রয়েছে, যা চাষের সাফল্যে গুরুত্বপূর্ণ ভূমিকা পালন করে। নিচে কিছু জনপ্রিয় জাতের বিবরণ দেওয়া হলো।',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.green.shade800,
                            fontSize: 17,
                            height: 1.6,
                          ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 28),

                    // Divider
                    Divider(
                      color: Colors.green.shade300,
                      thickness: 1.5,
                      indent: 20,
                      endIndent: 20,
                    ),
                    const SizedBox(height: 16),

                    // Broccoli Varieties Section
                    Text(
                      'জনপ্রিয় ব্রকলির জাত:',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: Colors.green.shade900,
                            fontSize: 24,
                          ),
                    ),
                    const SizedBox(height: 16),

                    // Varieties ListView with Card
                    ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        _buildVariationCard(
                          context,
                          'ক্যালাব্রেস: বড় মাথা, ঘন সবুজ রঙ, শীতকালীন চাষের জন্য উপযুক্ত।',
                        ),
                        _buildVariationCard(
                          context,
                          'ডি সিসকো: দ্রুত বৃদ্ধি, উষ্ণ আবহাওয়ায় ভালো ফলন।',
                        ),
                        _buildVariationCard(
                          context,
                          'পার্পল স্প্রাউটিং: বেগুনি রঙ, উচ্চ পুষ্টিগুণ, শীতল জলবায়ুতে ভালো।',
                        ),
                        _buildVariationCard(
                          context,
                          'গ্রিন ম্যাজিক: তাপ-সহনশীল, বাংলাদেশের জন্য উপযুক্ত।',
                        ),
                      ],
                    ),
                    const SizedBox(height: 28),

                    // Additional Resources
                    Text(
                      'আরও তথ্যের জন্য "মাটির অবস্থা" এবং "চাষ পদ্ধতি" বিভাগগুলো দেখুন। স্থানীয় কৃষি বিশেষজ্ঞের পরামর্শ নিন।',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.green.shade700,
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                            height: 1.5,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVariationCard(BuildContext context, String text) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Colors.white.withOpacity(0.95),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [Colors.green.shade50, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.eco,
                color: Colors.green.shade700,
                size: 24,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.green.shade800,
                        fontSize: 17,
                        height: 1.5,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
