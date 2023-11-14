import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../controller/home_controller.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  HomeController controller = Get.find();
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        centerTitle: true,
      ),
      body: GetBuilder<HomeController>(builder: (controller) {
        if (controller.newsApi != null) {
          return ListView.builder(
              itemCount: controller.newsApi!.articles.length,
              itemBuilder: (context, index) => SizedBox(
                    height: 200,
                    child: Card(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image(
                              image: NetworkImage(controller
                                      .newsApi!.articles[index].urlToImage
                                      .toString()),
                              fit: BoxFit.fill,
                              height: double.infinity,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                const  SizedBox(
                                  height: 16,
                                ),
                                Text(controller.newsApi!.articles[index].author
                                    .toString(),style: Theme.of(context).textTheme.bodySmall,),
                              const   SizedBox(
                                  height: 16,
                                ),
                                Text(controller.newsApi!.articles[index].title
                                    .toString(),style: Theme.of(context).textTheme.titleMedium,),
                               const  SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  controller
                                      .newsApi!.articles[index].description
                                      .toString(),
                                  style: Theme.of(context).textTheme.bodySmall,
                                  maxLines: 2,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ));
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      }),
    );
  }
}
