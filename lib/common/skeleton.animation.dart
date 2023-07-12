import 'package:flutter/cupertino.dart';
import 'package:skeletons/skeletons.dart';

skeletonLoading(bool isLoading, Widget widget) {
  Skeleton(isLoading: isLoading, skeleton: const SkeletonLine(), child: widget);
}
