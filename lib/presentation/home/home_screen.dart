import 'package:dev_manage/manager/font_manager.dart';
import 'package:dev_manage/manager/space_manager.dart';
import 'package:dev_manage/presentation/add_edit/add_edit_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          child: Column(
            children: [
              Text('ALL DEVELOPERS', style: appFonts.f26w600White),
              appSpaces.spaceForHeight20,
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: List.generate(
                      8,
                      (index) => Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        height: 78,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: const Color(0xFF4C6683),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 0),
                            leading: const CircleAvatar(
                              radius: 34,
                              backgroundImage: NetworkImage(
                                  'https://newprofilepic.photo-cdn.net//assets/images/article/profile.jpg'),
                            ),
                            title: Text(
                              'Harilal',
                              style: GoogleFonts.ubuntu(
                                  fontSize: 21,
                                  letterSpacing: 1,
                                  color: Colors.white),
                            ),
                            subtitle: Text(
                              'Flutter Developer',
                              style: GoogleFonts.ubuntu(
                                  fontSize: 17, color: Colors.amber),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        child: const Icon(
          Icons.add,
          size: 35,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/AddOrEdit Screen',
              arguments: const AddEditScreen(addOrEdit: AddOrEdit.devAdd));
        },
      ),
    );
  }
}
