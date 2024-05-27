import 'package:flutter/material.dart';
import 'package:healife/feature/global/widgets/button/custom_rectangle_button.dart';
import 'package:healife/feature/global/widgets/container/pastel_container.dart';
import 'package:ionicons/ionicons.dart';

import '../global/widgets/area/default_page_padding.dart';
import '../global/widgets/wrap/custom_wrap.dart';

class BodyMassView extends StatefulWidget {
  const BodyMassView({super.key});

  @override
  State<BodyMassView> createState() => _BodyMassViewState();
}

class _BodyMassViewState extends State<BodyMassView> {
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
              Ionicons.scale_outline,
              size: MediaQuery.of(context).size.width / 2,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(height: 16.0),
            PastelContainer(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Ionicons.chevron_down_outline,
                      color: Theme.of(context).primaryColor,
                    ),
                    Expanded(
                      child: Text(
                        "180 cm",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 8.0),
            PastelContainer(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Ionicons.chevron_down_outline,
                      color: Theme.of(context).primaryColor,
                    ),
                    Expanded(
                      child: Text(
                        "85 kg",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 8.0),
            PastelContainer(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Ionicons.chevron_down_outline,
                      color: Theme.of(context).primaryColor,
                    ),
                    Expanded(
                      child: Text(
                        "Erkek",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            CustomRectangleButton(
              text: "Hesapla",
              onTap: () {},
            ),
            Spacer(),
            Text("Vücut Kitle İndeksiniz"),
            SizedBox(height: 8.0),
            CustomWrap(
              wrapCrossAlignment: WrapCrossAlignment.end,
              children: [
                Text(
                  "26.2",
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(fontWeight: FontWeight.bold, color: Colors.red, height: 0.8),
                ),
                Text(
                  "kg/m2",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.bold, color: Colors.red, height: 0.8),
                )
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              "İdeal kilonun üzerindesiniz!",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.red, height: 0.8),
            ),
            SizedBox(height: 8.0),
            CustomWrap(
              wrapCrossAlignment: WrapCrossAlignment.end,
              children: [
                Text(
                  "İdeal kilonuz",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith( color: Theme.of(context).primaryColor, height: 0.8),
                ),
                Text(
                  "75 kg",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor, height: 0.8),
                ),
              ],
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
