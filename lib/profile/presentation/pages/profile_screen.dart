import 'package:flutter/material.dart';
import 'package:insta_profile/profile/presentation/widget/view_item_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "ton_bb_bio_",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 24,
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(.5),
              child: GestureDetector(
                onTap: () {
                  _controller.animateTo(0);
                },
                child: const Icon(
                  Icons.add,
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          const Icon(
            Icons.menu,
            size: 40,
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/olice.jpeg"),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const ViewItemWidget(
                      value: "24",
                      label: "Publications",
                    ),
                    const ViewItemWidget(
                      value: "880",
                      label: "Followers",
                    ),
                    const ViewItemWidget(
                      value: "465",
                      label: "Suivi(e)s",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "🔸Marie-Angel🔸",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    const Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standar...",
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "🔗m-a-nguess/",
                      style: TextStyle(
                        color: Colors.white38,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white38,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                "Modifier profil",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white38,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                "Patager profil",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Icon(
                                Icons.person_add,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
              SizedBox(
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (int i = 0; i <= 20; i++)
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 52,
                              backgroundColor: Colors.orange,
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 51,
                                child: CircleAvatar(
                                  radius: 48,
                                  backgroundImage: AssetImage(
                                    'assets/images/olice.jpeg',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 6),
                            Text("Olice")
                          ],
                        ),
                      )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              TabBar(
                controller: _controller,
                padding: const EdgeInsets.all(8),
                dividerColor: Colors.transparent,
                tabs: const [
                  Icon(Icons.grid_4x4),
                  Icon(Icons.video_call),
                  Icon(Icons.person),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _controller,
                  children: [
                    GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: List.generate(
                        19,
                        (index) => Container(
                          color: Colors.green,
                        ),
                      ),
                    ),
                    GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: List.generate(
                        19,
                        (index) => Container(
                          color: Colors.red,
                        ),
                      ),
                    ),
                    GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: List.generate(
                        19,
                        (index) => Container(
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
