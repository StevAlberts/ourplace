import 'package:flutter/material.dart';

class AllHomesView extends StatefulWidget {
  const AllHomesView({Key? key}) : super(key: key);

  @override
  State<AllHomesView> createState() => _AllHomesViewState();
}

class _AllHomesViewState extends State<AllHomesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text("All Homes"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton.icon(
              style: TextButton.styleFrom(
                primary: Colors.black,
              ),
              icon: const Icon(Icons.tune),
                onPressed: () {

            }, label: const Text("Filter"),),
          ),
        ],
      ),
      body: _buildAllHomesViewBody(),
    );
  }

  Widget _buildAllHomesViewBody() {
    return SafeArea(
      child: ListView.builder(
        itemCount: 10,
        padding: const EdgeInsets.all(8.0),
        itemBuilder: (context, index) {
          return _buildHomeCard();
        },
      ),
    );
  }

  Widget _buildHomeCard(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0)),
        child: SizedBox(
          height: 260,
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
    );
  }
}
