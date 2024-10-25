import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerListTile extends StatelessWidget {
  const ShimmerListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.white,
      child: ListTile(
        trailing: Container(
          width: 100,
          height: 100,
          color: Colors.grey,
        ),
        title: Container(
          height: 20,
          width: 150, // Width for title
          color: Colors.grey,
        ),
        subtitle: Container(
          height: 16,
          width: 200, // Width for subtitle
          color: Colors.grey,
        ),
      ),
    );
  }
}
