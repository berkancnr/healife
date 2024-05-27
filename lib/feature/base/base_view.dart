import 'package:flutter/material.dart';
import 'package:healife/feature/bodymass/body_mass_view.dart';
import 'package:healife/feature/calorie/calorie_tracking.dart';
import 'package:healife/feature/stats/stats_view.dart';
import 'package:healife/feature/watertracking/water_tracking_view.dart';
import 'package:ionicons/ionicons.dart';

class BaseView extends StatefulWidget {
  const BaseView({super.key});

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: [WaterTrackingView(), CalorieTracking(), BodyMassView(), StatsView()],
              ),
            ),
            TabBar(
              controller: _controller,
              indicator: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Theme.of(context).primaryColor, width: 3.0),
                ),
              ),
              tabs: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(Ionicons.water_outline),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(Ionicons.restaurant_outline),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(Ionicons.scale_outline),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(Ionicons.stats_chart_outline),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
