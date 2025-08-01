import 'package:flet/flet.dart';
import 'flet_shimmer.dart';

ControlBuilder getControlBuilder(String type) {
  switch (type) {
    case "flet_shimmer":
      return (parent, control) => FletShimmerControl(parent: parent, control: control);
    default:
      return null;
  }
}
