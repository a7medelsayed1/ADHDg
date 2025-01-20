import 'package:cloud_firestore/cloud_firestore.dart';

class Task {
  final String subject;
  final String activity;
  final DateTime date;
  final String duration;
  final bool isCompleted;
  final String id;
  final String day;
  final String weak;

  Task({
    required this.subject,
    required this.activity,
    required this.date,
    required this.duration,
    required this.isCompleted,
    required this.id,
    required this.day,
    required this.weak
  });

  factory Task.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Task(
      subject: data['subject'] ?? '',
      activity: data['activity'] ?? '',
      date: (data['time'] as Timestamp).toDate(),
      duration: data['duration'] ?? '',
      isCompleted: data['isCompleted'] ?? false,
      id: data['childID']??'',
      day: data['day']??'',
      weak: data['weak']??'',
    );
  }
}

Future<List<Task>> fetchTasks(String weaknum, monthnum) async {
  final querySnapshot = await FirebaseFirestore.instance.collection('tasks').where('weak',isEqualTo: weaknum ).where('month', isEqualTo: monthnum).get();
  return querySnapshot.docs.map((doc) => Task.fromFirestore(doc)).toList();

}

Future<Map<String, int>> countActivitiesByTitle(String childId) async {
  try {

    final tasksCollection = FirebaseFirestore.instance.collection('tasks');


    final querySnapshot = await tasksCollection
        .where('childID', isEqualTo: childId)
        .get();


    Map<String, int> activityCount = {};

    for (var doc in querySnapshot.docs) {
      final data = doc.data();
      final title = data['activity'] as String;

      if (activityCount.containsKey(title)) {
        activityCount[title] = activityCount[title]! + 1;
      } else {
        activityCount[title] = 1;
      }
    }

    return activityCount;
  } catch (e) {
    print('Error fetching activity counts: $e');
    return{};
  }
}
