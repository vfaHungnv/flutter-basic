import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' as vector;
import 'tab-item.dart';

class FancyTabBar extends StatefulWidget {
  @override
  _FancyTabBarState createState() => _FancyTabBarState();
}

class _FancyTabBarState extends State<FancyTabBar> with TickerProviderStateMixin {
  AnimationController _animationController;
  Tween<double> _positionTween;
  Animation<double> _positionAnimation;

  AnimationController _fadeOutController;
  Animation<double> _fadeFabOutAnimation;
  Animation<double> _fadeFabInAnimation;

  double fabIconAlpha = 1;
  IconData nextIcon = Icons.search;
  IconData activeIcon = Icons.search;

  int currentSelected = 1;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this, duration: Duration(milliseconds: ANIM_DURATION)
    );
    _fadeOutController = AnimationController(
      vsync: this, duration: Duration(milliseconds: (ANIM_DURATION ~/ 5))
    );

  }
}