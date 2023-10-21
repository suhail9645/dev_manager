import 'package:dev_manage/manager/font_manager.dart';
import 'package:dev_manage/manager/space_manager.dart';
import 'package:dev_manage/manager/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum AddOrEdit {
  devAdd,
  devEdit,
}

class AddEditScreen extends StatelessWidget {
  const AddEditScreen({super.key, required this.addOrEdit});
  final AddOrEdit addOrEdit;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Text(
                  addOrEdit == AddOrEdit.devAdd
                      ? 'Add Developer'
                      : 'Edit Developer',
                  style: appFonts.f26w600White,
                ),
                appSpaces.spaceForHeight10,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 90,
                      backgroundColor: Colors.amber,
                      child: CircleAvatar(
                        radius: 84,
                        backgroundImage: NetworkImage(
                            'https://newprofilepic.photo-cdn.net//assets/images/article/profile.jpg'),
                      ),
                    ),
                  ],
                ),
                appSpaces.spaceForHeight10,
                ...List.generate(
                    4,
                    (index) => Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  appStrings.userDetailestitle[index],
                                  style: GoogleFonts.k2d(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            TextFormField(
                              style: appFonts.f18w600White,
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 17),
                                  hintText: appStrings.addOrEditHints[index],
                                  hintStyle: GoogleFonts.k2d(
                                      fontSize: 18,
                                      color: const Color.fromARGB(
                                          255, 197, 193, 193)),
                                  filled: true,
                                  fillColor: const Color(0xFF445281),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide.none)),
                            )
                          ],
                        )),
                appSpaces.spaceForHeight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 49,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          'ADD',
                          style: appFonts.f23w600Black,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
