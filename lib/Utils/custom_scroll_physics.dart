import 'package:flutter/cupertino.dart';

class CustomScrollPhysics extends ScrollPhysics {
  final double itemDimension;
  final int lastPage;

  CustomScrollPhysics({this.itemDimension, this.lastPage, ScrollPhysics parent}) : super(parent: parent);

  @override
  CustomScrollPhysics applyTo(ScrollPhysics ancestor) {
    return CustomScrollPhysics(itemDimension: itemDimension, parent: buildParent(ancestor));
  }

  double _getPage(ScrollPosition position) {
    return position.pixels / itemDimension;
  }

  double _getPixels(double page) {
    if(page!=lastPage){
      return (page * itemDimension) - 20;
    }
    return page * itemDimension;
  }

  double _getTargetPixels(ScrollPosition position, Tolerance tolerance, double velocity) {
    double page = _getPage(position);
    if (velocity < -tolerance.velocity) {
      page -= 0.4;
    } else if (velocity > tolerance.velocity) {
      page += 0.4;
    }
    return _getPixels(page.roundToDouble());
  }

  @override
  Simulation createBallisticSimulation(
      ScrollMetrics position, double velocity) {
    if ((velocity <= 0.0 && position.pixels <= position.minScrollExtent) ||
        (velocity >= 0.0 && position.pixels >= position.maxScrollExtent))
      return super.createBallisticSimulation(position, velocity);
    final Tolerance tolerance = this.tolerance;
    final double target = _getTargetPixels(position, tolerance, velocity);
    if (target != position.pixels)
      return ScrollSpringSimulation(spring, position.pixels, target, velocity, tolerance: tolerance);
    return null;
  }

  @override
  bool get allowImplicitScrolling => false;
}