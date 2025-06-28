import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

class RatingNumbers extends StatelessWidget {
  final String title;
  final double percentage;
  const RatingNumbers({
    required this.title,
    required this.percentage,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text(title, style: TextStyle(fontSize: 15)),
          SizedBox(width: 2),
          Icon(Icons.star, color: Colors.green, size: 16),
          SizedBox(width: 2),
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: 6,

                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: percentage,
                  child: Container(
                    height: 6,

                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          SizedBox(
            width: 40,
            child: Text(
              "${(percentage * 100).toInt()}%",
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  final String image;
  final String title;
  final String time;
  final String dexcription;
  const Profile({
    required this.title,
    required this.image,
    required this.time,
    required this.dexcription,
    super.key,
  });

  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  child: Image.asset(image, height: 30, width: 30),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                    StarRating(rating: 5, color: Colors.green, size: 16),
                  ],
                ),
              ],
            ),
            Text(
              time,
              style: TextStyle(color: Color(0xff33302E).withOpacity(.30)),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(dexcription, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,

      decoration: BoxDecoration(
        color: Color(0xff343434),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
        ),
      ),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_basket_sharp, color: Colors.white),
            SizedBox(width: 10),
            Text(
              "Add to Cart",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      color: Colors.white,
      elevation: 4,
      child: Container(
        width: 45,
        height: 45,
        child: Icon(Icons.favorite, color: Colors.redAccent),
      ),
    );
  }
}

class BaseLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Baseline(
              baseline: 16,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                '4.9',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(width: 10),

            Baseline(
              baseline: 16,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                'OUT OF 5',
                style: TextStyle(fontSize: 12, color: Color(0xff8A8A8F)),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            StarRating(rating: 5, size: 18, color: Color(0xff508A7B)),
            SizedBox(height: 2),
            Text('83 ratings', style: TextStyle(color: Color(0xff8A8A8F))),
          ],
        ),
      ],
    );
  }
}
