//vidio 7-9
import 'dart:html';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/sideBar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _drawerKey,
        drawer: const SideBar(),
        backgroundColor: AppColors.primaryBg,
        body: SafeArea(
          child: Row(
            children: [
              !context.isPhone
                  ? const Expanded(flex: 2, child: SideBar())
                  : const SizedBox(),
              Expanded(
                flex: 15,
                child: Column(children: [
                  !context.isPhone
                      ? const header()
                      : Container(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  _drawerKey.currentState!.openDrawer();
                                },
                                icon: const Icon(
                                  Icons.menu,
                                  color: AppColors.primaryText,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Task Management',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: AppColors.primaryText),
                                  ),
                                  Text(
                                    'Manage Task Made Easy With Friends',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.primaryText),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const Icon(Icons.notifications,
                                  color: AppColors.primaryText, size: 30),
                              const SizedBox(
                                width: 15,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 25,
                                  foregroundImage: NetworkImage(
                                      'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
                                ),
                              )
                            ],
                          ),
                        ),
                  //CONTENT /ISI PAGE / SCREEN
                  Expanded(
                      child: Container(
                    padding:!context.isPhone
                        ? const EdgeInsets.all(50)
                        : const EdgeInsets.all(20),
                    margin: !context.isPhone
                        ? const EdgeInsets.all(10)
                        : const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: !context.isPhone
                          ? BorderRadius.circular(50)
                          : BorderRadius.circular(30),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'My Task',
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        //my task
                        SizedBox(
                          height: 200,
                          child: ListView(
                            clipBehavior: Clip.antiAlias,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            children: [
                              Container(
                                width: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:AppColors.cardBg,
                                ),
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(25),
                                          child: const CircleAvatar(
                                            backgroundColor: Colors.amber,
                                            radius: 20,
                                            foregroundImage: NetworkImage(
                                                'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
                                          ),
                                        ),
                                         ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.amber,
                                        radius: 20,
                                        foregroundImage: NetworkImage(
                                            'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 25,
                                      width: 80,
                                      color: AppColors.primaryBg,
                                      child: const Center(child: Text('100%', 
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                    ),)),
                                    ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 25,
                                      width: 80,
                                      color: AppColors.primaryBg,
                                      child: const Center(child: Text('10/10 Task', 
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                    ),)),
                                      
                                    ),
                                    const Text(
                                      'Pemrograman Internet Lanjut', 
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                    fontSize: 15,
                                    ),
                                    ),
                                     const Text(
                                      'Deadline 2 Hari Lagi', 
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                    fontSize: 15,
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:AppColors.cardBg,
                                ),
                                 margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(25),
                                          child: const CircleAvatar(
                                            backgroundColor: Colors.amber,
                                            radius: 20,
                                            foregroundImage: NetworkImage(
                                                'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
                                          ),
                                        ),
                                         ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.amber,
                                        radius: 20,
                                        foregroundImage: NetworkImage(
                                            'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 25,
                                      width: 80,
                                      color: AppColors.primaryBg,
                                      child: const Center(child: Text('100%', 
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                    ),)),
                                    ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 25,
                                      width: 80,
                                      color: AppColors.primaryBg,
                                      child: const Center(child: Text('10/10 Task', 
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                    ),)),
                                      
                                    ),
                                    const Text(
                                      'Pemrograman Internet Lanjut', 
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                    fontSize: 15,
                                    ),
                                    ),
                                     const Text(
                                      'Deadline 2 Hari Lagi', 
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                    fontSize: 15,
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:AppColors.cardBg,
                                ),
                                 margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(25),
                                          child: const CircleAvatar(
                                            backgroundColor: Colors.amber,
                                            radius: 20,
                                            foregroundImage: NetworkImage(
                                                'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
                                          ),
                                        ),
                                         ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.amber,
                                        radius: 20,
                                        foregroundImage: NetworkImage(
                                            'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 25,
                                      width: 80,
                                      color: AppColors.primaryBg,
                                      child: const Center(child: Text('100%', 
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                    ),)),
                                    ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 25,
                                      width: 80,
                                      color: AppColors.primaryBg,
                                      child: const Center(child: Text('10/10 Task', 
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                    ),)),
                                      
                                    ),
                                    const Text(
                                      'Pemrograman Internet Lanjut', 
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                    fontSize: 15,
                                    ),
                                    ),
                                     const Text(
                                      'Deadline 2 Hari Lagi', 
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                    fontSize: 15,
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:AppColors.cardBg,
                                ),
                                 margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(25),
                                          child: const CircleAvatar(
                                            backgroundColor: Colors.amber,
                                            radius: 20,
                                            foregroundImage: NetworkImage(
                                                'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
                                          ),
                                        ),
                                         ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.amber,
                                        radius: 20,
                                        foregroundImage: NetworkImage(
                                            'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 25,
                                      width: 80,
                                      color: AppColors.primaryBg,
                                      child: const Center(child: Text('100%', 
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                    ),)),
                                    ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 25,
                                      width: 80,
                                      color: AppColors.primaryBg,
                                      child: const Center(child: Text('10/10 Task', 
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                    ),)),
                                      
                                    ),
                                    const Text(
                                      'Pemrograman Internet Lanjut', 
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                    fontSize: 15,
                                    ),
                                    ),
                                     const Text(
                                      'Deadline 2 Hari Lagi', 
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                    fontSize: 15,
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:AppColors.cardBg,
                                ),
                                 margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(25),
                                          child: const CircleAvatar(
                                            backgroundColor: Colors.amber,
                                            radius: 20,
                                            foregroundImage: NetworkImage(
                                                'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
                                          ),
                                        ),
                                         ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.amber,
                                        radius: 20,
                                        foregroundImage: NetworkImage(
                                            'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 25,
                                      width: 80,
                                      color: AppColors.primaryBg,
                                      child: const Center(child: Text('100%', 
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                    ),)),
                                    ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 25,
                                      width: 80,
                                      color: AppColors.primaryBg,
                                      child: const Center(child: Text('10/10 Task', 
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                    ),)),
                                      
                                    ),
                                    const Text(
                                      'Pemrograman Internet Lanjut', 
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                    fontSize: 15,
                                    ),
                                    ),
                                     const Text(
                                      'Deadline 2 Hari Lagi', 
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                    fontSize: 15,
                                    ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),                
                      Expanded(
                        child: Row(
                          children: [
                            Expanded (
                              child: SafeArea(
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                          'Upcoming Task',
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontSize: 30,
                                          ),
                                        ),
                                         const SizedBox(
                                  height: 20,
                                  ),
                                                      SizedBox(
                                                        height: 200,
                                                        child: ListView(
                                  clipBehavior: Clip.antiAlias,
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  children: [
                                    Container(
                                      //SAMPAI SINI ..
                                      //width: 400,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color:AppColors.cardBg,
                                      ),
                                      margin: const EdgeInsets.all(10),
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(25),
                                                child: const CircleAvatar(
                                                  backgroundColor: Colors.amber,
                                                  radius: 20,
                                                  foregroundImage: NetworkImage(
                                                      'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
                                                ),
                                              ),
                                               ClipRRect(
                                            borderRadius: BorderRadius.circular(25),
                                            child: const CircleAvatar(
                                              backgroundColor: Colors.amber,
                                              radius: 20,
                                              foregroundImage: NetworkImage(
                                                  'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
                                            ),
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 25,
                                            width: 80,
                                            color: AppColors.primaryBg,
                                            child: const Center(child: Text('100%', 
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          ),)),
                                          ),
                                            ],
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 25,
                                            width: 80,
                                            color: AppColors.primaryBg,
                                            child: const Center(child: Text('10/10 Task', 
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          ),)),
                                            
                                          ),
                                          const Text(
                                            'Pemrograman Internet Lanjut', 
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          fontSize: 15,
                                          ),
                                          ),
                                           const Text(
                                            'Deadline 2 Hari Lagi', 
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          fontSize: 15,
                                          ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 400,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color:AppColors.cardBg,
                                      ),
                                       margin: const EdgeInsets.all(10),
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(25),
                                                child: const CircleAvatar(
                                                  backgroundColor: Colors.amber,
                                                  radius: 20,
                                                  foregroundImage: NetworkImage(
                                                      'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
                                                ),
                                              ),
                                               ClipRRect(
                                            borderRadius: BorderRadius.circular(25),
                                            child: const CircleAvatar(
                                              backgroundColor: Colors.amber,
                                              radius: 20,
                                              foregroundImage: NetworkImage(
                                                  'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
                                            ),
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 25,
                                            width: 80,
                                            color: AppColors.primaryBg,
                                            child: const Center(child: Text('100%', 
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          ),)),
                                          ),
                                            ],
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 25,
                                            width: 80,
                                            color: AppColors.primaryBg,
                                            child: const Center(child: Text('10/10 Task', 
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          ),)),
                                            
                                          ),
                                          const Text(
                                            'Pemrograman Internet Lanjut', 
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          fontSize: 15,
                                          ),
                                          ),
                                           const Text(
                                            'Deadline 2 Hari Lagi', 
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          fontSize: 15,
                                          ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 400,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color:AppColors.cardBg,
                                      ),
                                       margin: const EdgeInsets.all(10),
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(25),
                                                child: const CircleAvatar(
                                                  backgroundColor: Colors.amber,
                                                  radius: 20,
                                                  foregroundImage: NetworkImage(
                                                      'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
                                                ),
                                              ),
                                               ClipRRect(
                                            borderRadius: BorderRadius.circular(25),
                                            child: const CircleAvatar(
                                              backgroundColor: Colors.amber,
                                              radius: 20,
                                              foregroundImage: NetworkImage(
                                                  'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
                                            ),
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 25,
                                            width: 80,
                                            color: AppColors.primaryBg,
                                            child: const Center(child: Text('100%', 
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          ),)),
                                          ),
                                            ],
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 25,
                                            width: 80,
                                            color: AppColors.primaryBg,
                                            child: const Center(child: Text('10/10 Task', 
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          ),)),
                                            
                                          ),
                                          const Text(
                                            'Pemrograman Internet Lanjut', 
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          fontSize: 15,
                                          ),
                                          ),
                                           const Text(
                                            'Deadline 2 Hari Lagi', 
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          fontSize: 15,
                                          ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 400,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color:AppColors.cardBg,
                                      ),
                                       margin: const EdgeInsets.all(10),
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(25),
                                                child: const CircleAvatar(
                                                  backgroundColor: Colors.amber,
                                                  radius: 20,
                                                  foregroundImage: NetworkImage(
                                                      'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
                                                ),
                                              ),
                                               ClipRRect(
                                            borderRadius: BorderRadius.circular(25),
                                            child: const CircleAvatar(
                                              backgroundColor: Colors.amber,
                                              radius: 20,
                                              foregroundImage: NetworkImage(
                                                  'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
                                            ),
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 25,
                                            width: 80,
                                            color: AppColors.primaryBg,
                                            child: const Center(child: Text('100%', 
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          ),)),
                                          ),
                                            ],
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 25,
                                            width: 80,
                                            color: AppColors.primaryBg,
                                            child: const Center(child: Text('10/10 Task', 
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          ),)),
                                            
                                          ),
                                          const Text(
                                            'Pemrograman Internet Lanjut', 
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          fontSize: 15,
                                          ),
                                          ),
                                           const Text(
                                            'Deadline 2 Hari Lagi', 
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          fontSize: 15,
                                          ),
                                          ),
                                        ],
                                      ),
                                    ),
                                   ],
                                                        ),
                                                      ),                
                                                            
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                          'My Friends',
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontSize: 30,
                                          ),
                                        ),
                                        const Text(
                                          'More',
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontSize: 30,
                                          ),
                                        ),
                                        Icon(Icons.arrow_forward, color: AppColors.primaryText,)
                                    ],
                                  ),
                                     const SizedBox(
                              height: 20,
                                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      ]),
                  ),
                  )
                ]),
              )
            ],
          ),
        ),
        );
  }
}
