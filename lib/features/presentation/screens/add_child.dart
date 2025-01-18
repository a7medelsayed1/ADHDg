import 'package:flutter/material.dart';

import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:graduation_adhd/features/presentation/screens/my_children.dart';

class Addchild extends StatefulWidget {
  const Addchild({super.key});

  @override
  State<Addchild> createState() => _AddchildState();
}

class _AddchildState extends State<Addchild> {
  Color _favoriteColor = Colors.grey; // اللون الافتراضي
  //  Future<void> _saveColor(Color color) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   bool success=await prefs.setInt('selectedColor', color.value);
  //  if (success) {
  //   print("تم حفظ اللون بنجاح: ${color.value}");
  // } else {
  //   print("فشل في حفظ اللون.");
  // }
  // }
  

  // استرجاع اللون من Shared Preferences
  // Future<void> _loadColor() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   int? colorValue = prefs.getInt('selectedColor');
  //   if (colorValue != null) {
  //     setState(() {
  //       _favoriteColor = Color(colorValue); // تحويل القيمة إلى كائن Color
  //     });
  //     print("تم استرجاع اللون: $colorValue");
  //   }
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   _loadColor(); 
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الخلفية
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              'https://storage.googleapis.com/codeless-app.appspot.com/uploads%2Fimages%2F0RjDuTVp_UGTv6g3KECl%2F49b195b6-97ee-4a66-bc19-dd614353c077.png',
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            top: 60, // المسافة من الأعلى
            left: 210, // المسافة من اليمين
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    ":أطفالك",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    icon: Container(
                      width: 30, // العرض
                      height: 30, // الارتفاع
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(
                            255, 187, 221, 108), // لون الخلفية
                        shape: BoxShape.circle, // جعلها دائرة
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // ظل خفيف
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3), // تحديد موقع الظل
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.add, // الأيقونة
                        color: Colors.black, // لون الأيقونة
                        size: 30, // حجم الأيقونة
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Addchild()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          // المحتوى
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Container(
                width: 430,
                height: 800, // عرض المستطيل
                padding: const EdgeInsets.all(20), // حشو العناصر
                decoration: BoxDecoration(
                  color: Colors.white, // لون الخلفية
                  borderRadius: BorderRadius.circular(32), // استدارة الحواف
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Text("إلغاء",
                              style: TextStyle(
                                fontSize: (20),
                                color: Colors.red,
                              )),
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const homeTwo()),
                            // );
                          },
                        ),
                        const Text(
                          ":إضافة طفل",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 50),
                    // Avatar
                    Center(
                      child: Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          Container(
                            width: 120, // عرض الصورة مع الإطار
                            height: 120, // ارتفاع الصورة مع الإطار
                            decoration: BoxDecoration(
                              shape: BoxShape.circle, // جعل الإطار دائريًا
                              border: Border.all(
                                color: Colors.black, // لون الإطار
                                width: 2, // سمك الإطار
                              ),
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'images/face1.jpg', // استبدل بالمسار الصحيح لصورة الشعار
                                height: 300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    // البيانات
                    Center(
                      child: Column(
                        children: [
                          const Text(
                            "ما اسمي؟",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            height: 45,
                            width: 190,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'اسم الطفل',
                                hintStyle: const TextStyle(fontSize: 16),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                    width: 1.5,
                                  ),
                                ),
                              ),
                              textAlign: TextAlign.end,
                            ),
                          ),
                          const SizedBox(height: 18),
                          // اللون المفضل
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _showColorPicker(context);
                                },
                                child: Container(
                                  width: 30, // العرض
                                  height: 30, // الارتفاع
                                  decoration: BoxDecoration(
                                    color: _favoriteColor, // اللون الحالي
                                    shape: BoxShape.circle, // جعلها دائرة
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                "ما لوني المفضل؟",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  _showDeletConfirmationDialog(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                      255, 255, 137, 119), // لون الزر
                                  foregroundColor: Colors.black, // لون النص
                                ),
                                child: const Text(
                                  "حذف",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const MyChildrenScreen()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                      255, 187, 221, 108), // لون الزر
                                  foregroundColor: Colors.black, // لون النص
                                ),
                                child: const Text(
                                  'أضف طفلي',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
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
            ),
          ),

          // مستطيل التنقل
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
                          //       builder: (context) => const homeTwo()),
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
                          //       builder: (context) => const Profile()),
                          // );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // عرض الـ Color Picker
  void _showColorPicker(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('اختر اللون المفضل'),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: _favoriteColor, // اللون الحالي
              onColorChanged: (color) {
                 


                setState(() {
                  _favoriteColor = color; // تحديث اللون عند تغييره
                 

                });
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
               
                Navigator.of(context).pop(); 
              },
              child: const Text('تم'),
            ),
          ],
        );
        
      },
    );
  }
}

// رسالة التأكيد عند الحذف
void _showDeletConfirmationDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Center(
        child: AlertDialog(title: const Text('هل تريد حذف طفلك؟'), actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // زر الإلغاء
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // إغلاق الرسالة
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromARGB(255, 255, 137, 119), // لون الزر
                  foregroundColor: Colors.black, // لون النص
                ),
                child: const Text(
                  'إلغاء',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              // زر الموافقة
              const SizedBox(
                width: 80,
              ),
              ElevatedButton(
                onPressed: () {
                  // إغلاق الرسالة السابقة
                  // Navigator.of(context).pop();

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const homeTwo()),
                  // );
                },
                child: const Text(
                  'نعم',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 187, 221, 108),
                  foregroundColor: Colors.black,
                ),
              ),
            ],
          ),
        ]),
      );
    },
  );
}
