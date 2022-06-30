import 'package:flutter/material.dart';
import 'package:ourplace/views/searchView/all_homes_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 60.0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: Card(
            elevation: 4.0,
            shape: const StadiumBorder(),
            child: ListTile(
              dense: true,
              onTap: () {},
              leading: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              title: const Text(
                "Search our places and homes",
              ),
              trailing: const Icon(
                Icons.tune,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      body: _buildHomeViewBody(),
    );
  }

  Widget _buildHomeViewBody() {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: [
        const ListTile(
          dense: false,
          title: Text('Suggested places'),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: InkWell(
                  onTap: () {},
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Card(
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: const SizedBox(
                          height: 100,
                          width: 200,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Kireka",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.white),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                            onPressed: () {},
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Text(
                                    "Explore",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Icon(Icons.arrow_forward, color: Colors.black),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: InkWell(
                  onTap: () {},
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Card(
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: const SizedBox(
                          height: 100,
                          width: 200,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Namugongo",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.white),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                            onPressed: () {},
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Text(
                                    "Explore",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Icon(Icons.arrow_forward, color: Colors.black),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: InkWell(
                  onTap: () {},
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Card(
                        color: Colors.brown,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: const SizedBox(
                          height: 100,
                          width: 200,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Wandegeya",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.white),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                            onPressed: () {},
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Text(
                                    "Explore",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Icon(Icons.arrow_forward, color: Colors.black),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        ListTile(
          dense: false,
          title: const Text('Nearby'),
          trailing: TextButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const AllHomesView(),
              ),
            ),
            child:
                const Text("See all", style: TextStyle(color: Colors.orange)),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),),
                  child: SizedBox(
                    height: 260,
                    width: 280,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(8.0)),
                          ),
                          height: 150,
                        ),
                        SizedBox(
                          height: 110,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Namugongo",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(color: Colors.orange),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: Text.rich(
                                    TextSpan(
                                      text: "900,000 UGX",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                      children: [
                                        TextSpan(
                                          text: " / month",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1!
                                              .copyWith(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text("Gated",
                                    style:
                                        Theme.of(context).textTheme.subtitle1),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 2.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.bed,
                                          ),
                                          Text(
                                            " 2 Beds",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.shower,
                                          ),
                                          Text(
                                            " 1 Baths",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            " 1560 sqft",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1!
                                                .copyWith(color: Colors.grey),
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
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: SizedBox(
                  height: 260,
                  width: 280,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(8.0)),
                        ),
                        height: 150,
                      ),
                      SizedBox(
                        height: 110,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Wandegeya",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(color: Colors.orange),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: Text.rich(
                                  TextSpan(
                                    text: "250,000 UGX",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(fontWeight: FontWeight.bold),
                                    children: [
                                      TextSpan(
                                        text: " / month",
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .copyWith(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text("Gated",
                                  style: Theme.of(context).textTheme.subtitle1),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 2.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.bed,
                                        ),
                                        Text(
                                          " 2 Beds",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.shower,
                                        ),
                                        Text(
                                          " 1 Baths",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          " 1560 sqft",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1!
                                              .copyWith(color: Colors.grey),
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
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "See all",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_forward, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        ListTile(
          dense: false,
          title: const Text('New Homes'),
          trailing: TextButton(
            onPressed: () {},
            child:
                const Text("See all", style: TextStyle(color: Colors.orange)),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  child: SizedBox(
                    height: 260,
                    width: 280,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(8.0)),
                          ),
                          height: 150,
                        ),
                        SizedBox(
                          height: 110,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Namugongo",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(color: Colors.orange),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: Text.rich(
                                    TextSpan(
                                      text: "900,000 UGX",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                      children: [
                                        TextSpan(
                                          text: " / month",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1!
                                              .copyWith(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text("Gated",
                                    style:
                                        Theme.of(context).textTheme.subtitle1),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 2.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.bed,
                                          ),
                                          Text(
                                            " 2 Beds",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.shower,
                                          ),
                                          Text(
                                            " 1 Baths",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            " 1560 sqft",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1!
                                                .copyWith(color: Colors.grey),
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
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: SizedBox(
                  height: 260,
                  width: 280,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(8.0)),
                        ),
                        height: 150,
                      ),
                      SizedBox(
                        height: 110,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Wandegeya",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(color: Colors.orange),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: Text.rich(
                                  TextSpan(
                                    text: "250,000 UGX",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(fontWeight: FontWeight.bold),
                                    children: [
                                      TextSpan(
                                        text: " / month",
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .copyWith(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text("Gated",
                                  style: Theme.of(context).textTheme.subtitle1),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 2.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.bed,
                                        ),
                                        Text(
                                          " 2 Beds",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.shower,
                                        ),
                                        Text(
                                          " 1 Baths",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          " 1560 sqft",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1!
                                              .copyWith(color: Colors.grey),
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
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "See all",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_forward, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
