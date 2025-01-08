import 'package:flutter/material.dart';
import 'package:ticket_app/base/app_routes.dart';
import 'package:ticket_app/base/res/widgets/ticket_view.dart';
import 'package:ticket_app/base/utils/all_json.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: ticketList
                  .map((singleTicket) => GestureDetector(
                        onTap: () {
                          var index = ticketList.indexOf(singleTicket);
                          // print("I am Tapped Index $index");
                          Navigator.pushNamed(context, AppRoutes.ticketScreen,
                              arguments: {"index": index});
                        },
                        child: Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: TicketView(
                              ticket: singleTicket,
                              wholeScreen: true,
                            )),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
