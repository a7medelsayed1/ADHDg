import 'package:flutter/material.dart';


class Previoushomework extends StatelessWidget {
  const Previoushomework({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFB0C4DE),
          body: SafeArea(
            child: Container(
              width: 400,
              height: 800,
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                color: Color(0xFFB9CBD9),
              ),
              child: SizedBox(
                width: double.infinity,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 0,
                      top: 120,
                      child: Container(
                        width: 430,
                        height: 810,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                    ),

                    const Positioned(
                      left: 230,
                      top: 40,
                      child: Text(
                        'وليد',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 129,
                      top: 844,
                      child: Container(
                        width: 172,
                        height: 58,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: const Color(0xFF22A6D7),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 300,
                      top: 20,
                      child: Container(
                        width: 70,
                        height: 70,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/bluechild.jpg'),
                            fit: BoxFit.none,
                            alignment: Alignment(-1.03, 0.03),
                            scale: 4,
                          ),
                          borderRadius: BorderRadius.circular(37),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x3F000000),
                              spreadRadius: 0,
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 355,
                      top: 71,
                      child: Container(
                        width: 19,
                        height: 19,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x3F000000),
                              spreadRadius: 0,
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            )
                          ],
                        ),
                      ),
                    ),
////////////////////////////// القلم /////////////////////////////
                    Positioned(
                      left: 357,
                      top: 73,
                      child: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2F0RjDuTVp_UGTv6g3KECl%2Fba24ec6574b4758dd07547e08bd5a1a6f606b760pencil%201.png?alt=media&token=4440486f-0327-4930-a087-db2a87177166',
                        width: 14,
                        height: 14,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 22,
                      top: 190,
                      child: Container(
                        width: 360,
                        height: 41,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: const Color(0x7FEEEEEE),
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 200,
                      top: 195,
                      child: Container(
                        width: 175,
                        height: 32,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFDFFFE),
                          borderRadius: BorderRadius.circular(32),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x26000000),
                              spreadRadius: 0,
                              offset: Offset(0, 4),
                              blurRadius: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 260,
                      top: 140,
                      child: SizedBox(
                        width: 138,
                        height: 31,
                        child: Text(
                          'الواجبات',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 140,
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    const Positioned(
                      left: 225,
                      top: 200,
                      child: SizedBox(
                        width: 137,
                        height: 31,
                        child: Text(
                          'الحالية',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    /*Positioned(
                      left: 341,
                      top: 285,
                      child: SizedBox(
                        width: 66,
                        height: 31,
                        child: Text(
                          'الأحد',
                          style: TextStyle(
                            color: const Color(0xFF333333),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),*/
                   /* Positioned(
                      left: 340,
                      top: 310,
                      child: SizedBox(
                        width: 66,
                        height: 31,
                        child: Text(
                          '20/10',
                          style: TextStyle(
                            color: const Color(0xFF8B8B8B),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),*/
                    /*Positioned(
                      left: 336,
                      top: 465,
                      child: SizedBox(
                        width: 66,
                        height: 31,
                        child: Text(
                          'الأربعاء',
                          style: TextStyle(
                            color: const Color(0xFF333333),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),*/
                   /* Positioned(
                      left: 341,
                      top: 493,
                      child: SizedBox(
                        width: 66,
                        height: 31,
                        child: Text(
                          '23/10',
                          style: TextStyle(
                            color: const Color(0xFF8B8B8B),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),*/
                   /* Positioned(
                      left: 49,
                      top: 200,
                      child: SizedBox(
                        width: 137,
                        height: 31,
                        child: Text(
                          'السابقة',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF333333),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),*/
                    Positioned(
                      left: 49,
                      top: 190,
                      child: Container(
                        width: 137,
                        height: 31,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: Colors.white, // Set background color to white
                          borderRadius: BorderRadius.circular(32),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x26000000),
                              spreadRadius: 0,
                              offset: Offset(0, 4),
                              blurRadius: 20,
                            )
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            'السابقة',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // the line under the grey circle wed
                    /*Positioned(
                      left: 324,
                      top: 188,
                      child: Image.network(
                        'https://storage.googleapis.com/codeless-app.appspot.com/uploads%2Fimages%2F0RjDuTVp_UGTv6g3KECl%2F619a2ef7-8276-4d34-b831-9ddb8cb574d8.png',
                        width: 1,
                        height: 504,
                        fit: BoxFit.contain,
                      ),
                    ),
                    //tiny grey circle for the schedule sun
                    Positioned(
                      left: 320,
                      top: 305,
                      child: Container(
                        width: 9,
                        height: 9,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    //tiny grey circle for the schedule middle
                    Positioned(
                      left: 320,
                      top: 395,
                      child: Container(
                        width: 9,
                        height: 9,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    //tiny grey circle for the schedule wed
                    Positioned(
                      left: 320,
                      top: 485,
                      child: Container(
                        width: 9,
                        height: 9,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    // math container
                    Positioned(
                      left: 37,
                      top: 275,
                      child: Container(
                        width: 270,
                        height: 70,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFEDDD8),
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                    ),
                    // language container
                    Positioned(
                      left: 37,
                      top: 365,
                      child: Container(
                        width: 270,
                        height: 70,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF0ECC7),
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 220,
                      top: 370,
                      child: Text(
                        'لغتي',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: const Color(0xFF333333),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 258,
                      top: 380,
                      child: Text(
                        '📜',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: const Color(0xFF333333),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 218,
                      top: 395,
                      child: Text(
                        'الرقص',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: const Color(0xFF5E5E5E),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 208,
                      top: 413,
                      child: Text(
                        '15m 🕐',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: const Color(0xFF8B8B8B),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    //all the above are related to lang container
                    // english container
                    Positioned(
                      left: 37,
                      top: 455,
                      child: Container(
                        width: 270,
                        height: 70,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: const Color(0xFFDBC0E8),
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 188,
                      top: 460,
                      child: Text(
                        'الإنجليزية',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: const Color(0xFF333333),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 260,
                      top: 470,
                      child: Text(
                        '📜',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: const Color(0xFF333333),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 228,
                      top: 485,
                      child: Text(
                        'القفز',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: const Color(0xFF5E5E5E),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 208,
                      top: 503,
                      child: Text(
                        '30m 🕐',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: const Color(0xFF8B8B8B),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // all above are related to english conatiner

                    Positioned(
                      left: 190,
                      top: 280,
                      child: Text(
                        'رياضيات ',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: const Color(0xFF333333),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 260,
                      top: 288,
                      child: Text(
                        '🔬',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: const Color(0xFF333333),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 207,
                      top: 305,
                      child: Text(
                        'نط الحبل',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: const Color(0xFF5E5E5E),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 209,
                      top: 325,
                      child: Text(
                        '20m 🕐',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: const Color(0xFF8B8B8B),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),*/

                    //navigation button
                    Positioned(
                      bottom: 20,
                      left: 110,
                      child: Align(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Container(
                          width: 172, // عرض المستطيل
                          height: 58, // ارتفاع المستطيل
                          padding:
                          const EdgeInsets.symmetric(horizontal: 10), // حشو داخلي
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 34, 166, 215), // لون الخلفية
                            borderRadius: BorderRadius.circular(18), // استدارة الحواف
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center, // توسيط الأيقونات أفقيًا
                              crossAxisAlignment:
                              CrossAxisAlignment.center, // توسيط الأيقونات عموديًا
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.grid_view_rounded, // الأيقونة الأولى
                                    size: 40,
                                    color: Color.fromARGB(
                                        255, 183, 224, 255), // لون الأيقونة
                                  ),
                                  onPressed: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => const homeTwo_page()),
                                    // );
                                  },
                                ),
                                const SizedBox(width: 20),
                                IconButton(
                                  icon: const Icon(
                                    Icons.person,
                                    size: 40,
                                    color: Color.fromARGB(255, 183, 224, 255),
                                  ),
                                  onPressed: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => const profile_page()),
                                    // );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                // Progress bar section
                const Positioned(
                left: 22,
                bottom: 450,
                child: SizedBox(
                  width: 360,
                  height: 40,
                  child: ProgressBars(completedPercentage: 0.65), // Replace 0.65 with actual percentage
                ),
                ),
                    Positioned(
                      left: 100,
                      bottom: 500, // Adjusted slightly below the progress bar
                      child: Text(
                        'الواجبات غير المكتملة          الواجبات المكتملة', // Arabic for "Completed Homework"
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class ProgressBars extends StatelessWidget {
  final double completedPercentage;

  const ProgressBars({super.key, required this.completedPercentage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background bar (hidden)
        Container(
          width: 0.0, // Set width to 0 to hide the background bar
          height: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey[300],
          ),
        ),

        // Progress bars
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.4 * completedPercentage,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xFFC3E7C8), // Green color from the image
              ),
              child: Center(
                child: Text(
                  '${(completedPercentage * 100).toStringAsFixed(0)}%',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 8,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4 * (1 - completedPercentage),
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xFFF8CECE), // Red color from the image
              ),
              child: Center(
                child: Text(
                  '${((1 - completedPercentage) * 100).toStringAsFixed(0)}%',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 8,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
