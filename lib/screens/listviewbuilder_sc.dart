import 'package:components/config/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imageItems = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();

  bool isLoading = false;

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));
    add5();
  }

  void add5() {
    final last = imageItems.last;
    imageItems.addAll([1, 2, 3, 4, 5].map((i) => last + i));
    isLoading = false;
    if (scrollController.position.pixels + 100 <=
        scrollController.position.maxScrollExtent) return;
    scrollController.animateTo(
      scrollController.position.pixels + 100,
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
    );
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      /* print(
          '${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}'); */
      if ((scrollController.position.pixels + 300) >=
          scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 3));
    final last = imageItems.last;
    imageItems.clear();
    imageItems.add(last + 1);
    setState(() {});
    add5();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primaryColor,
              onRefresh: onRefresh,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: imageItems.length,
                controller: scrollController,
                itemBuilder: ((context, index) {
                  return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/jar-loading.gif'),
                    image: NetworkImage(
                        'https://picsum.photos/500/300?image=${imageItems[index]}'),
                  );
                }),
              ),
            ),
            if (isLoading)
              Positioned(
                bottom: 30,
                left: size.width * 0.5 - 30,
                child: const LoadingStack(),
              ),
          ],
        ),
      ),
    );
  }
}

class LoadingStack extends StatelessWidget {
  const LoadingStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.6),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(
        color: AppTheme.primaryColor,
      ),
    );
  }
}
