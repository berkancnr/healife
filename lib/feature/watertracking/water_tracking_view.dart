import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healife/feature/global/widgets/area/default_page_padding.dart';
import 'package:healife/feature/global/widgets/button/custom_rectangle_button.dart';
import 'package:healife/feature/global/widgets/container/pastel_container.dart';
import 'package:healife/feature/global/widgets/wrap/custom_wrap.dart';
import 'package:ionicons/ionicons.dart';

class WaterTrackingView extends StatefulWidget {
  const WaterTrackingView({super.key});

  @override
  State<WaterTrackingView> createState() => _WaterTrackingViewState();
}

class _WaterTrackingViewState extends State<WaterTrackingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Su Takibi"),
      ),
      body: DefaultPagePadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Ionicons.water_sharp,
              size: MediaQuery.of(context).size.width / 2,
              color: Colors.blueAccent,
            ),
            CustomWrap(
              children: [
                _circleIconButton(icon: Ionicons.add_outline),
                PastelContainer(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
                    child: Text(
                      "5",
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),
                    ),
                  ),
                ),
                _circleIconButton(icon: Ionicons.remove_outline),
              ],
            ),
            SizedBox(height: 16.0),
            CustomRectangleButton(
              text: "Ekle",
              onTap: () {},
            ),
            Spacer(),
            Text("Bu gün"),
            SizedBox(height: 8.0),
            CustomWrap(
              wrapCrossAlignment: WrapCrossAlignment.end,
              children: [
                Text(
                  "1.25",
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor, height: 0.8),
                ),
                Text(
                  "Litre",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor, height: 0.8),
                )
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              "su içtiniz!",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor, height: 0.8),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Container _circleIconButton({required IconData icon}) {
    return Container(
        decoration: BoxDecoration(color: Theme.of(context).primaryColor, shape: BoxShape.circle),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ));
  }
}
