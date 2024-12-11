import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/fab.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Image.asset(
          'assets/image/logo.png',
          height: 30,
        ),
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                const Text(
                  'User123456',
                  style: TextStyle(
                    color: Color(0xFF6FCF97),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 8),
                Icon(
                  Icons.account_circle,
                  color: Colors.green.shade300,
                  size: 24,
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),

      backgroundColor: const Color(0xFF4EB677),

      floatingActionButton: Fab(),

      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Judul "Jadwal Hari Ini"
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                'Jadwal Hari Ini',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            // Container Putih dengan ListView
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(top: 20),
              width: double.infinity,
              height: 555,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Colors.white,
              ),
              child: SizedBox(
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 20,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return AnimatedContainer(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF4F4F4),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            offset: const Offset(0, 4),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      duration: const Duration(milliseconds: 600),
                      child: const ListTile(
                        title: Text('Aktivitas'),

                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
