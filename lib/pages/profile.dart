import 'package:flutter/material.dart';
import 'package:myapp/widgets/profileinfo.dart';
import 'package:myapp/widgets/profilepic.dart';
import 'package:myapp/widgets/story.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedSectionIndex = 0;

  void _onIconTapped(int index) {
    setState(() {
      _selectedSectionIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            pinned: true, // Keeps the AppBar at the top
            title: Row(
              children: [
                Text(
                  'Tarjo',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.expand_more,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_box_outlined, color: Colors.black),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu, color: Colors.black),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.white,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: _buildProfileHeader(),
          ),
          SliverToBoxAdapter(
            child: _buildIconNavigation(),
          ),
          if (_selectedSectionIndex == 0) _buildGridSection(),
          if (_selectedSectionIndex == 1) _buildFeedSection(),
          if (_selectedSectionIndex == 2) _buildBookmarkSection(),
          if (_selectedSectionIndex == 3) _buildTaggedSection(),
        ],
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ProfilePicture(),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 5, left: 10),
                      child: Text(
                        "tarjo_12",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 8, left: 10),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Edit Profile",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey[200],
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.zero,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 8, right: 10),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "View archive",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey[200],
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.zero,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                text:
                    "It is a long established fact that a reader will be distracted by the readable",
                style: TextStyle(fontSize: 18, color: Colors.black),
                children: [
                  TextSpan(
                    text: " #hastag",
                    style: TextStyle(fontSize: 18, color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Link goes here",
              style: TextStyle(color: Color.fromARGB(255, 2, 62, 130)),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem(
                      title: "Story 1",
                      imageUrl: "https://picsum.photos/200?random=1"),
                  StoryItem(
                      title: "Story 2",
                      imageUrl: "https://picsum.photos/200?random=2"),
                  StoryItem(
                      title: "Story 3",
                      imageUrl: "https://picsum.photos/200?random=3"),
                  StoryItem(
                      title: "Story 4",
                      imageUrl: "https://picsum.photos/200?random=4"),
                  StoryItem(
                      title: "Story 5",
                      imageUrl: "https://picsum.photos/200?random=5"),
                  StoryItem(
                      title: "Story 6",
                      imageUrl: "https://picsum.photos/200?random=6"),
                  StoryItem(
                      title: "Story 7",
                      imageUrl: "https://picsum.photos/200?random=7"),
                  StoryItem(
                      title: "Story 8",
                      imageUrl: "https://picsum.photos/200?random=8"),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 10),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey[300]!, width: 1),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileInfo("posts", "30"),
                ProfileInfo("followers", "80k"),
                ProfileInfo("following", "1"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconNavigation() {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey[300]!, width: 1),
          bottom: BorderSide(color: Colors.grey[300]!, width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildIcon(Icons.grid_on, 0),
          _buildIcon(Icons.list, 1),
          _buildIcon(Icons.bookmark_border, 2),
          _buildIcon(Icons.person_pin_outlined, 3),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData icon, int index) {
    return GestureDetector(
      onTap: () => _onIconTapped(index),
      child: Container(
        child: Icon(
          icon,
          color: _selectedSectionIndex == index ? Colors.blue : Colors.grey,
          size: 25,
        ),
      ),
    );
  }

  Widget _buildGridSection() {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: DecorationImage(
                image: NetworkImage('https://picsum.photos/200?random=$index'),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        childCount: 30,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
      ),
    );
  }

  Widget _buildFeedSection() {
    return SliverToBoxAdapter(
      child: Center(child: Text("Feed Section")),
    );
  }

  Widget _buildBookmarkSection() {
    return SliverToBoxAdapter(
      child: Center(child: Text("Bookmark Section")),
    );
  }

  Widget _buildTaggedSection() {
    return SliverToBoxAdapter(
      child: Center(child: Text("Tagged Section")),
    );
  }
}
