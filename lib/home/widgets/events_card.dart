import 'package:atg_task_1/models/events.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventsCard extends StatelessWidget {
  const EventsCard({Key? key, required this.event}) : super(key: key);
  final Event event;
  


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width-50,
      height: 320,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.white,
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width-50,
              height: 150,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  color: Color(0xffdde3c2)
              ),
              child:ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.asset(event.photo,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    event.eventsName,
                    style:GoogleFonts.inter(
                      color: const Color(0xFF598BED),
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Text(
                    event.eventsDesc,
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        event.date,
                        style:GoogleFonts.inter(
                          color: const Color(0xFF6C747A),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: const Color(0xff598bed),
                              width: 2,
                            ),
                        ),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal:18),
                            child: Text('Book',
                              style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff598bed),
                            ),

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
