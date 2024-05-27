import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../global/widgets/area/default_page_padding.dart';
import '../global/widgets/button/custom_rectangle_button.dart';
import '../global/widgets/container/pastel_container.dart';
import '../global/widgets/wrap/custom_wrap.dart';

class StatsDetailView extends StatefulWidget {
  const StatsDetailView({super.key});

  @override
  State<StatsDetailView> createState() => _StatsDetailViewState();
}

class _StatsDetailViewState extends State<StatsDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İstatistikler"),
      ),
      body: DefaultPagePadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Ionicons.stats_chart_outline,
              size: MediaQuery.of(context).size.width / 2,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(height: 16.0),
            PastelContainer(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "4 Nisan 2024",
                      style:
                          TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Su Miktarı",
                          style: TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        Text(
                          "4 Litre",
                          style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Kalori Miktarı",
                          style: TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        Text(
                          "1200 Kalori",
                          style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Vücut Kitle Endeksi",
                          style: TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        Text(
                          "26.2 kg/m2",
                          style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            Text("Hedeflenen kilo"),
            SizedBox(height: 8.0),
            CustomWrap(
              wrapCrossAlignment: WrapCrossAlignment.end,
              children: [
                Text(
                  "75",
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor, height: 0.8),
                ),
                Text(
                  "kg",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor, height: 0.8),
                )
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              "Bu ayki kalori hedefinize ulaştınız!",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor, height: 0.8),
            ),
            SizedBox(height: 8.0),
            Text(
              "Bu ayki su hedefinizin altındasınız!",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.red, height: 0.8),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
