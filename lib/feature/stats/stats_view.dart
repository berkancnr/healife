import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healife/feature/global/widgets/area/default_page_padding.dart';
import 'package:healife/feature/global/widgets/container/pastel_container.dart';

class StatsView extends StatefulWidget {
  const StatsView({super.key});

  @override
  State<StatsView> createState() => _StatsViewState();
}

class _StatsViewState extends State<StatsView> {
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
            Expanded(
              child: MonthView(
                  borderColor: Theme.of(context).primaryColor,
                  controller: EventController(),
                  // to provide custom UI for month cells.
                  cellBuilder: (date, events, isToday, isInMonth,value) {
                    // Return your widget to display as month cell.
                    return Container(
                      color: isToday ? Theme.of(context).primaryColor : Colors.transparent,
                    );
                  },
                  minMonth: DateTime(1990),
                  maxMonth: DateTime(2050),
                  initialMonth: DateTime.now(),
                  cellAspectRatio: 1,
                  onPageChange: (date, pageIndex) => print("$date, $pageIndex"),
                  onCellTap: (events, date) {
                    // Implement callback when user taps on a cell.
                    print(events);
                  },
                  startDay: WeekDays.sunday, // To change the first day of the week.
                  // This callback will only work if cellBuilder is null.
                  onEventTap: (event, date) => print(event),
                  onDateLongPress: (date) => print(date),
                  headerBuilder: MonthHeader.hidden // To hide month header
                  ),
            ),
            Expanded(
              child: Center(
                child: PastelContainer(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "4 Nisan 2024",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, fontSize: 16),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
