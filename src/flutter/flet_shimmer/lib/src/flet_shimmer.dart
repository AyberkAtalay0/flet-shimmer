import 'package:flet/flet.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class FletShimmerControl extends StatelessWidget {
  final Control? parent;
  final Control control;

  const FletShimmerControl({
    super.key,
    required this.parent,
    required this.control,
  });

  @override
  Widget build(BuildContext context) {
    var baseColor = control.attrColor("base_color", context) ?? Colors.grey[300];
    var highlightColor = control.attrColor("highlight_color", context) ?? Colors.grey[100];
    var width = control.attrDouble("width") ?? 200;
    var height = control.attrDouble("height") ?? 20;
    Widget child = Container(width: width, height: height, color: baseColor);

    Widget shimmer = Shimmer.fromColors(
      baseColor: baseColor!,
      highlightColor: highlightColor!,
      child: child,
    );

    return constrainedControl(context, shimmer, parent, control);
  }
}
