import 'package:flutter/material.dart';
import 'package:healife/feature/global/widgets/area/default_page_padding.dart';
import 'package:healife/feature/global/widgets/button/custom_rectangle_button.dart';
import 'package:healife/feature/global/widgets/container/pastel_container.dart';
import 'package:ionicons/ionicons.dart';

class GoalsView extends StatefulWidget {
  const GoalsView({super.key});

  @override
  State<GoalsView> createState() => _GoalsViewState();
}

class _GoalsViewState extends State<GoalsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hedefler"),
      ),
      body: DefaultPagePadding(
        child: Column(
          children: [
            Image.network(
              "https://cdn-icons-png.flaticon.com/512/36/36447.png",
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.width / 2,
              color: Theme.of(context).textTheme.displayMedium?.color,
            ),
            Text(
              "Healife",
              style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            Spacer(),
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
                        "Su (Litre)",
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
                        "Kalori",
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
              text: "Ekle",
              onTap: () {},
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
