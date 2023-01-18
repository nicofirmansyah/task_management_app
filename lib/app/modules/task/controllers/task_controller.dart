import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_management_app/app/data/controller/auth_controller.dart';

class TaskController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final authCon = Get.find<AuthController>();

  late TextEditingController titleController,
  descriptionController,
  dueDateControler;


  @override
  void onInit() {
    super.onInit();
  titleController = TextEditingController();
  descriptionController = TextEditingController();
  dueDateControler = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  titleController .dispose();
  descriptionController .dispose();
  dueDateControler .dispose();
  }

  void saveUpdateTask(
      String titel,
      String description,
      String dueDate,
      String docId,
      String type,

      ) async {
        print(titel);
        print(description);
        print(dueDate);
        print(docId);
        print(type);
        final isValid = formKey.currentState!.validate();
        if (!isValid) {
          return;
        }
        formKey.currentState!.save();
        CollectionReference taskColl = firestore.collection('task');
        CollectionReference userColl = firestore.collection('user');
        var taskId = DateTime.now().toIso8601String();
        if (type == 'Add') {
          await taskColl.doc(taskId).set({
            'title': titel,
            'description': description,
            'due_date': dueDate,
            'status': '0',
            'total_task_finished': '0',
            'task detail': [],
            'asign_to' :[authCon.auth.currentUser!.email],
            'created_by' :authCon.auth.currentUser!.email,
          }). whenComplete(() async{
            await userColl.doc(authCon.auth.currentUser!.email).set({
              'task_id' : FieldValue.arrayUnion([taskId])
            }, SetOptions(merge: true));
            Get.back();
            Get.snackbar('Task', 'Sucsessfuly $type');
          }).catchError((error) {
            Get.snackbar('Task', 'Error $type');
          });
        }else {
          await taskColl.doc(docId).update({
            'title': titel,
            'description': description,
            'due_date': dueDate,
          }). whenComplete(() async{
            await userColl.doc(authCon.auth.currentUser!.email).set({
              'task_id' : FieldValue.arrayUnion([taskId])
            }, SetOptions(merge: true));
            Get.back();
            Get.snackbar('Task', 'Sucsessfuly $type');
          }).catchError((error) {
            Get.snackbar('Task', 'Error $type');
          });
        }
      }
}
