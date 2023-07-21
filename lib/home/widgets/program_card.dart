import 'package:atg_task_1/models/programs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgramCard extends StatelessWidget {
  const ProgramCard({Key? key, required this.program}) : super(key: key);
  final Program program;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width-50,
      height: 300,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.white,
        elevation: 10,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width-50,
              height: 150,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  color: Color(0xffdde3c2)
              ),
              child:SvgPicture.asset(program.photo),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    program.programName,
                    style:GoogleFonts.inter(
                      color: const Color(0xFF598BED),
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Text(
                    program.programDesc,
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    '${program.lessonNo} lessons',
                    style:GoogleFonts.inter(
                      color: const Color(0xFF6C747A),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
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
