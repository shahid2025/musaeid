
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musaeid/helper/assets.dart';
import 'package:musaeid/helper/utils/pallete.dart';
import 'package:musaeid/helper/utils/styled_text.dart';
import 'package:sizer/sizer.dart';
class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  final List<Map<String, dynamic>> reviews = [
    {
      'name': 'name2'.tr,
      'rating': 3,
      'review': 'review1'.tr
    },
    {
      'name': 'name'.tr,
      'rating': 5,
      'review': 'review2'.tr,}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pallete.primaryColor,
      leading: Icon(Icons.menu,color: Pallete.white,),
        actions: [
          SizedBox(
            width: 30.w,
            child: StyledText(
              text: 'title'.tr,
              fontSize: 20,color: Pallete.white,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Column(
          children: List.generate(reviews.length, (index) {
            final review = reviews[index];
            return ReviewTile(
              name: review['name'],
              rating: review['rating'],
              review: review['review'],
            );
          }),
        )



            ],
          ),
        ),
      ),
    );
  }

}

class ReviewTile extends StatelessWidget {
  final String name;
  final int rating;
  final String review;

  ReviewTile({required this.name, required this.rating, required this.review});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                ),
                SizedBox(width: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StyledText(text:
                      name,fontSize: 18.0, fontWeight: FontWeight.bold
                    ),
                    //Spacer(),
                    Row(
                      children: List.generate(5, (starIndex) {
                        return Icon(
                          starIndex < rating ? Icons.star : Icons.star_border,
                          color: starIndex < rating ? Colors.orange : Colors.grey,
                        );
                      }),
                    ),
                  ],
                ),

              ],
            ),
            SizedBox(height: 8.0),
            StyledText(text:
              review,
              align: TextAlign.justify,
             fontSize: 14.0
            ),
          ],
        ),
      ),
    );
  }
}