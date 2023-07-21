import 'package:atg_task_1/home/widgets/events_card.dart';
import 'package:atg_task_1/home/widgets/lesson_card.dart';
import 'package:atg_task_1/home/widgets/program_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffeef3fd),
        elevation: 0,
        leading:GestureDetector(
          onTap:(){},
          child:Image.asset('assets/images/Menu.png'),
        ),
        actions: [
          SvgPicture.asset('assets/images/chat.svg'),
          const SizedBox(width: 20,),
          SvgPicture.asset('assets/images/Notification.svg'),
          const SizedBox(width: 20,),
        ],
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        primary: false,
        child: Column(
          children: [
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              color:const Color(0xffeef3fd),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, Priya!',
                      style:GoogleFonts.lora(
                        color:const Color(0xFF08090A),
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'What do you wanna learn today?',
                      style:GoogleFonts.inter(
                        color: const Color(0xFF6C747A),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomContainer(text: 'Programs', press: (){},widget: const ImageIcon(
                          AssetImage("assets/icons/Book-mark.png",),
                          color: Color(0xFF598BED),
                        )),
                        const SizedBox(width: 10,),
                        CustomContainer(text: 'Get help', press: (){},widget:SvgPicture.asset("assets/icons/help-circle.svg"),)
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomContainer(text: 'Learn', press: (){},widget: const ImageIcon(
                          AssetImage("assets/icons/Bookopen.png",),
                          color: Color(0xFF598BED),
                        )),
                        const SizedBox(width: 10,),
                        CustomContainer(text: 'DD Tracker', press: (){},widget:SvgPicture.asset("assets/icons/trello.svg"),)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Programs for you',
                    style:GoogleFonts.lora(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(child: Container()),
                  Text('View all',
                    textAlign: TextAlign.right,
                    style:GoogleFonts.inter(
                      color: Color(0xFF6C747A),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Icon(Icons.arrow_forward,color:Color(0xFF6C747A),size: 20,)
                ],
              ),
            ),
            const SizedBox(height: 20,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...programList.map((program) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal:7 ).copyWith(bottom: 30),
                    child:ProgramCard(program: program,),
                  )),
                ],
              ),
            ),

            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Events and experiences',
                    style:GoogleFonts.lora(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(child: Container()),
                  Text(
                    'View all',
                    textAlign: TextAlign.right,
                    style:GoogleFonts.inter(
                      color: const Color(0xFF6C747A),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Icon(Icons.arrow_forward,color:Color(0xFF6C747A),size: 20,)
                ],
              ),
            ),
            const SizedBox(height: 20,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...eventList.map((event) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal:7 ).copyWith(bottom: 30),
                    child:EventsCard(event: event,),
                  )),
                ],
              ),
            ),

            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lessons for you',
                    style:GoogleFonts.lora(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(child: Container()),
                  Text('View all',
                    textAlign: TextAlign.right,
                    style:GoogleFonts.inter(
                      color: const Color(0xFF6C747A),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Icon(Icons.arrow_forward,color:Color(0xFF6C747A),size: 20,)
                ],
              ),
            ),
            const SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...lessonList.map((lesson) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal:7 ).copyWith(bottom: 30),
                    child:LessonCard(lesson: lesson,),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget CustomContainer({
    required String text,
    required VoidCallback press,
    required Widget widget,
  }){
     return GestureDetector(
       onTap: press,
       child: Container(
         height: 50,
         width:MediaQuery.of(context).size.width/2-20,
         decoration:BoxDecoration(
           borderRadius: BorderRadius.circular(8),
           border: Border.all(
             color: const Color(0xFF598BED),
             width: 2,
           ),
         ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             widget,
             Text(text,
               style:GoogleFonts.inter(
                 color: const Color(0xFF598BED),
                 fontSize: 18,
                 fontWeight: FontWeight.w600,
               ),
             )
           ],
         ),
       ),
     );
 }
}
