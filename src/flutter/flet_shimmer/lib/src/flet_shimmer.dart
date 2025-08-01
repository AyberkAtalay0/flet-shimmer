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
    var enabled = control.attrBool("enabled") ?? true;
    var expand = control.attrBool("expand") ?? false;

    var directionStr = control.attrString("direction", "ltr")?.toLowerCase();
    ShimmerDirection direction;
    switch (directionStr) {
      case "rtl":
        direction = ShimmerDirection.rtl;
        break;
      case "ttb":
        direction = ShimmerDirection.ttb;
        break;
      case "btt":
        direction = ShimmerDirection.btt;
        break;
      case "ltr":
      default:
        direction = ShimmerDirection.ltr;
    }

    var periodMs = control.attrInt("period_ms") ?? 1500;
    int? loop = control.attrInt("loop");

    Widget child = Container(width: width, height: height, color: baseColor);

    Widget shimmer;
    if (loop != null) {
      shimmer = Shimmer.fromColors(
        baseColor: baseColor!,
        highlightColor: highlightColor!,
        child: child,
        direction: direction,
        period: Duration(milliseconds: periodMs),
        enabled: enabled,
        loop: loop,
      );
    } else {
      shimmer = Shimmer.fromColors(
        baseColor: baseColor!,
        highlightColor: highlightColor!,
        child: child,
        direction: direction,
        period: Duration(milliseconds: periodMs),
        enabled: enabled,
      );
    }

    if (expand) {
      shimmer = Expanded(child: shimmer);
    }

    return constrainedControl(context, shimmer, parent, control);
  }
}
