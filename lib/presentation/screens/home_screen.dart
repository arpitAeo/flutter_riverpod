     import 'package:flutter/material.dart';
import 'package:riverpod_app/logic/provider/change_notifier_provider.dart';
import 'package:riverpod_app/logic/provider/future_provider.dart';
import 'package:riverpod_app/logic/provider/provider_page.dart';
import 'package:riverpod_app/logic/provider/state_notifier_provider.dart';
import 'package:riverpod_app/logic/provider/state_provider.dart';
import 'package:riverpod_app/logic/provider/stream_provider.dart';
     
     class MyHomePage extends StatelessWidget {
       final String? title;
       const MyHomePage({super.key, this.title});
     
       @override
       Widget build(BuildContext context) {
         return Scaffold(
          appBar: AppBar(title: Text('RiverPod')),
           body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (() => Navigator.push(context, MaterialPageRoute(builder: ((context) {
                    return ProviderPage();
                  })))),
                  child: Container(
                    color: Colors.red,
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child:
                    const Center(child: Text('Provider', style: TextStyle(fontSize: 25,color: Colors.white),))
                  ),
                ),
                SizedBox(height: 5,),
                InkWell(
                  onTap: (() => Navigator.push(context, MaterialPageRoute(builder: ((context) {
                    return StateProviderPage();
                  })))),
                  child: Container(
                    color: Colors.pink,
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child:
                    const Center(child: Text('State Provider', style: TextStyle(fontSize: 25,color: Colors.white),))
                  ),
                ),
                SizedBox(height: 5,),
                InkWell(
                  onTap: (() => Navigator.push(context, MaterialPageRoute(builder: ((context) {
                    return FutureProviderPage();
                  })))),
                  child: Container(
                    color: Colors.purple,
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child:
                    const Center(child: Text('Future Provider', style: TextStyle(fontSize: 25,color: Colors.white),))
                  ),
                ),
                SizedBox(height: 5,),
                InkWell(
                  onTap: (() => Navigator.push(context, MaterialPageRoute(builder: ((context) {
                    return StreamProvider();
                  })))),
                  child: Container(
                    color: Colors.amber,
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child:
                    const Center(child: Text('Stream Provider', style: TextStyle(fontSize: 25,color: Colors.white),))
                  ),
                ),
                SizedBox(height: 5,),
                InkWell(
                  onTap: (() => Navigator.push(context, MaterialPageRoute(builder: ((context) {
                    return ChangeNotifierProvider();
                  })))),
                  child: Container(
                    color: Colors.orange,
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child:
                    const Center(child: Text('Change Notifier Provider', style: TextStyle(fontSize: 25,color: Colors.white),))
                  ),
                ),
                SizedBox(height: 5,),
                InkWell(
                  onTap: (() => Navigator.push(context, MaterialPageRoute(builder: ((context) {
                    return StateNotifierProvider();
                  })))),
                  child: Container(
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child:
                    const Center(child: Text('State Notifier Provider', style: TextStyle(fontSize: 25,color: Colors.white),))
                  ),
                ),
                SizedBox(height: 5,),
                
              ],
            ),
           ),
         );
       }
     }