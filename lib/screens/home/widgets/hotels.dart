import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class Hotels extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotels({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(right: 16),
      width: size.width * 0.6,
      height: 300,
      decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(18)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                // assets/images${hotel['image']}
                image: AssetImage("assets/images/${hotel['image']}"),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel["place"],
              style:
                  AppStyles.headLineStyle2.copyWith(color: AppStyles.kakiColor),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel["destination"],
              style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "\$${hotel['price']}/night".toString(),
              style:
                  AppStyles.headLineStyle2.copyWith(color: AppStyles.kakiColor),
            ),
          )
        ],
      ),
    );
  }
}
