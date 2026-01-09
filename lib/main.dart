import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ---------------------------------------------------------
// 1. DATA MODEL
// ---------------------------------------------------------
class Animal {
  final String name;
  final String detail;
  final String imageUrl;
  final String category; // Animal, Bird, Reptile, Fish
  final String diet; // Herbivore, Carnivore, Omnivore

  Animal({
    required this.name,
    required this.detail,
    required this.imageUrl,
    required this.category,
    required this.diet,
  });
}

// ---------------------------------------------------------
// 2. DATASET (Living Species Only)
// ---------------------------------------------------------
final List<Animal> allAnimals = [
  // --- FISH (FUSHA) ---
  Animal(name: "Clownfish", category: "Fish", diet: "Omnivore", imageUrl: "https://loremflickr.com/300/300/clownfish", detail: "Famous from the movie 'Finding Nemo'.\nLive safely among stinging sea anemones.\nAll are born male and can change gender."),
  Animal(name: "Great White Shark", category: "Fish", diet: "Carnivore", imageUrl: "https://loremflickr.com/300/300/shark", detail: "Largest predatory fish in the world.\nCan detect a drop of blood in 25 gallons of water.\nThey have 300 serrated teeth."),
  Animal(name: "Goldfish", category: "Fish", diet: "Omnivore", imageUrl: "https://loremflickr.com/300/300/goldfish", detail: "One of the most common aquarium pets.\nCan distinguish between different faces.\nMemory is longer than the myth suggests."),
  Animal(name: "Salmon", category: "Fish", diet: "Carnivore", imageUrl: "https://loremflickr.com/300/300/salmon", detail: "Born in freshwater, migrate to ocean, return to spawn.\nKnown for swimming upstream against currents.\nRich in Omega-3 fatty acids."),
  Animal(name: "Pufferfish", category: "Fish", diet: "Carnivore", imageUrl: "https://loremflickr.com/300/300/pufferfish", detail: "Inflates into a ball when threatened.\nContains tetrodotoxin, a deadly poison.\nConsidered a delicacy in Japan (Fugu)."),

  // --- ANIMALS (MAMMALS) ---
  Animal(name: "Lion", category: "Animal", diet: "Carnivore", imageUrl: "https://loremflickr.com/300/300/lion", detail: "The King of the Jungle.\nLions are the most social of all big cats.\nThey live in groups called prides."),
  Animal(name: "Tiger", category: "Animal", diet: "Carnivore", imageUrl: "https://loremflickr.com/300/300/tiger", detail: "The largest wild cat species.\nRecognizable by dark vertical stripes.\nThey are apex predators."),
  Animal(name: "Elephant", category: "Animal", diet: "Herbivore", imageUrl: "https://loremflickr.com/300/300/elephant", detail: "Largest land mammal.\nUses trunk for grasping and drinking.\nHighly intelligent and emotional."),
  Animal(name: "Giraffe", category: "Animal", diet: "Herbivore", imageUrl: "https://loremflickr.com/300/300/giraffe", detail: "Tallest mammal on Earth.\nThey sleep only 30 minutes a day.\nTongues are blue/black to prevent sunburn."),
  Animal(name: "Wolf", category: "Animal", diet: "Carnivore", imageUrl: "https://loremflickr.com/300/300/wolf", detail: "The largest member of the dog family.\nThey live and hunt in packs.\nKnown for their howling communication."),
  Animal(name: "Zebra", category: "Animal", diet: "Herbivore", imageUrl: "https://loremflickr.com/300/300/zebra", detail: "Black and white striped coats.\nNo two stripe patterns are the same.\nThey run in zig-zags to escape predators."),
  Animal(name: "Panda", category: "Animal", diet: "Herbivore", imageUrl: "https://loremflickr.com/300/300/panda", detail: "Strict bamboo eaters.\nNative to mountains in China.\nSpend 14 hours a day eating."),
  Animal(name: "Cheetah", category: "Animal", diet: "Carnivore", imageUrl: "https://loremflickr.com/300/300/cheetah", detail: "The fastest land animal.\nCan reach speeds of 70 mph.\nThey have non-retractable claws."),
  Animal(name: "Koala", category: "Animal", diet: "Herbivore", imageUrl: "https://loremflickr.com/300/300/koala", detail: "Marsupials from Australia.\nThey eat only eucalyptus leaves.\nSleep up to 20 hours a day."),

  // --- BIRDS ---
  Animal(name: "Eagle", category: "Bird", diet: "Carnivore", imageUrl: "https://loremflickr.com/300/300/eagle", detail: "A powerful bird of prey.\nKnown for its keen eyesight.\nSymbol of freedom in many cultures."),
  Animal(name: "Parrot", category: "Bird", diet: "Herbivore", imageUrl: "https://loremflickr.com/300/300/parrot", detail: "Colorful intelligent birds.\nSome species can mimic human speech.\nLong lifespans, sometimes 80+ years."),
  Animal(name: "Penguin", category: "Bird", diet: "Carnivore", imageUrl: "https://loremflickr.com/300/300/penguin", detail: "Flightless birds living mostly in the Southern Hemisphere.\nTuxedo-like coloring is camouflage.\nEmperor Penguins survive freezing winters."),
  Animal(name: "Owl", category: "Bird", diet: "Carnivore", imageUrl: "https://loremflickr.com/300/300/owl", detail: "Nocturnal birds of prey.\nThey can rotate their heads 270 degrees.\nSilent flyers due to special feathers."),
  Animal(name: "Swan", category: "Bird", diet: "Herbivore", imageUrl: "https://loremflickr.com/300/300/swan", detail: "Symbol of grace and beauty.\nMate for life.\nAggressive when protecting nests."),

  // --- REPTILES ---
  Animal(name: "Crocodile", category: "Reptile", diet: "Carnivore", imageUrl: "https://loremflickr.com/300/300/crocodile", detail: "Large aquatic reptiles.\nThey have the strongest bite force.\nThey have existed for millions of years."),
  Animal(name: "Tortoise", category: "Reptile", diet: "Herbivore", imageUrl: "https://loremflickr.com/300/300/tortoise", detail: "Land-dwelling reptiles.\nKnown for very long lifespans.\nThey carry heavy shells for protection."),
  Animal(name: "Snake", category: "Reptile", diet: "Carnivore", imageUrl: "https://loremflickr.com/300/300/snake", detail: "Legless carnivorous reptiles.\nSome use venom to subdue prey.\nThey smell using their tongue."),
  Animal(name: "Chameleon", category: "Reptile", diet: "Carnivore", imageUrl: "https://loremflickr.com/300/300/chameleon", detail: "Change color for communication.\nEyes move independently.\nSticky tongues catch insects."),
  Animal(name: "Komodo Dragon", category: "Reptile", diet: "Carnivore", imageUrl: "https://loremflickr.com/300/300/komododragon", detail: "Largest living lizard.\nFound in Indonesian islands.\nThey have a venomous bite."),
];

// ---------------------------------------------------------
// 3. MAIN APP & THEME
// ---------------------------------------------------------
const Color kDarkBlueTextColor = Color(0xFF286DA8);
const Color kOrangeButtonColor = Color(0xFFF59C3F);
const Color kGreenVeg = Color(0xFF2E7D32);
const Color kRedNonVeg = Color(0xFFC62828);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wildlife App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: kDarkBlueTextColor),
          useMaterial3: true,
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.grey[100],
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
            prefixIconColor: Colors.grey,
          )
      ),
      home: const LoginScreenPage(),
    );
  }
}

// ---------------------------------------------------------
// 4. LOGIN SCREEN
// ---------------------------------------------------------
class LoginScreenPage extends StatelessWidget {
  const LoginScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.public, size: 80, color: kDarkBlueTextColor),
              const SizedBox(height: 20),
              const Text("PLANET EARTH\nCATALOG", textAlign: TextAlign.center, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: kDarkBlueTextColor)),
              const SizedBox(height: 40),
              const TextField(decoration: InputDecoration(labelText: "Explorer ID", prefixIcon: Icon(Icons.person))),
              const SizedBox(height: 15),
              const TextField(obscureText: true, decoration: InputDecoration(labelText: "Passcode", prefixIcon: Icon(Icons.lock))),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity, height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: kOrangeButtonColor, foregroundColor: Colors.white),
                  onPressed: () {
                    // Navigate to Dashboard
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const DashboardScreen()));
                  },
                  child: const Text("START EXPLORING", style: TextStyle(fontSize: 18)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------
// 5. DASHBOARD SCREEN (With LOGOUT)
// ---------------------------------------------------------
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Animal> displayList = List.from(allAnimals);
  String selectedCategory = "All"; // Track which filter is active
  TextEditingController searchController = TextEditingController();

  final List<String> categories = ["All", "Animal", "Bird", "Fish", "Reptile"];

  // FUNCTION: Filter by Category
  void filterByCategory(String category) {
    setState(() {
      selectedCategory = category;
      searchController.clear();
      if (category == "All") {
        displayList = List.from(allAnimals);
      } else {
        displayList = allAnimals.where((element) => element.category == category).toList();
      }
    });
  }

  // FUNCTION: Search Text
  void updateList(String value) {
    setState(() {
      displayList = allAnimals.where((element) =>
          element.name.toLowerCase().contains(value.toLowerCase())
      ).toList();
    });
  }

  // FUNCTION: Sort
  void sortList(String sortType) {
    setState(() {
      if (sortType == "A-Z") {
        displayList.sort((a, b) => a.name.compareTo(b.name));
      } else if (sortType == "Diet") {
        displayList.sort((a, b) => b.diet.compareTo(a.diet));
      }
    });
  }

  // --- NEW: LOGOUT FUNCTION ---
  void _logout(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Logout"),
          content: const Text("Are you sure you want to exit the catalog?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(), // Close dialog
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close dialog first
                // Navigate back to Login and remove history so they can't go back
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreenPage()),
                      (Route<dynamic> route) => false,
                );
              },
              child: const Text("Logout", style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Species Catalog"),
        backgroundColor: kDarkBlueTextColor,
        foregroundColor: Colors.white,
        actions: [
          // Sort Button
          PopupMenuButton<String>(
            onSelected: sortList,
            icon: const Icon(Icons.sort),
            itemBuilder: (BuildContext context) {
              return {'A-Z', 'Diet'}.map((String choice) {
                return PopupMenuItem<String>(value: choice, child: Text("Sort by $choice"));
              }).toList();
            },
          ),
          // --- NEW: LOGOUT BUTTON ---
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => _logout(context),
            tooltip: 'Logout',
          ),
        ],
      ),
      body: Column(
        children: [
          // SEARCH BAR
          Container(
            color: kDarkBlueTextColor,
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
            child: TextField(
              controller: searchController,
              onChanged: updateList,
              decoration: const InputDecoration(
                hintText: "Search name...",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(vertical: 0),
              ),
            ),
          ),

          // CATEGORY FILTER BAR
          Container(
            height: 50,
            color: Colors.white,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final cat = categories[index];
                final isSelected = selectedCategory == cat;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: ActionChip(
                    label: Text(cat),
                    backgroundColor: isSelected ? kOrangeButtonColor : Colors.grey[200],
                    labelStyle: TextStyle(
                        color: isSelected ? Colors.white : Colors.black87,
                        fontWeight: FontWeight.bold
                    ),
                    onPressed: () => filterByCategory(cat),
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                );
              },
            ),
          ),

          // THE LIST
          Expanded(
            child: displayList.isEmpty
                ? const Center(child: Text("No species found.", style: TextStyle(color: Colors.grey)))
                : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: displayList.length,
              itemBuilder: (context, index) {
                final animal = displayList[index];

                // Determine Colors/Icons
                Color dietColor = animal.diet == "Herbivore" ? kGreenVeg : (animal.diet == "Carnivore" ? kRedNonVeg : Colors.orange);
                IconData dietIcon = animal.diet == "Herbivore" ? Icons.eco : Icons.restaurant;

                // Color for category label
                Color catColor = Colors.blue.shade700;
                IconData catIcon = Icons.label;

                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(animal: animal)));
                    },
                    child: Row(
                      children: [
                        // IMAGE
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
                          child: Image.network(
                            animal.imageUrl,
                            width: 100, height: 100, fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                Container(width: 100, height: 100, color: Colors.grey[300], child: const Icon(Icons.broken_image)),
                          ),
                        ),

                        // INFO
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(child: Text(animal.name, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis)),
                                    // Diet Badge
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                      decoration: BoxDecoration(color: dietColor.withOpacity(0.1), borderRadius: BorderRadius.circular(4)),
                                      child: Row(
                                        children: [
                                          Icon(dietIcon, size: 12, color: dietColor),
                                          const SizedBox(width: 4),
                                          Text(animal.diet, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: dietColor)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 6),
                                // Category Badge
                                Row(
                                  children: [
                                    Icon(catIcon, size: 14, color: catColor),
                                    const SizedBox(width: 4),
                                    Text(animal.category, style: TextStyle(fontSize: 12, color: catColor, fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                const SizedBox(height: 6),
                                Text(
                                    animal.detail.split("\n")[0],
                                    style: TextStyle(color: Colors.grey[700], fontSize: 13),
                                    maxLines: 1, overflow: TextOverflow.ellipsis
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------
// 6. DETAIL SCREEN
// ---------------------------------------------------------
class DetailScreen extends StatelessWidget {
  final Animal animal;
  const DetailScreen({super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    Color dietColor = animal.diet == "Herbivore" ? kGreenVeg : (animal.diet == "Carnivore" ? kRedNonVeg : Colors.orange);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            backgroundColor: kDarkBlueTextColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(animal.name, style: const TextStyle(shadows: [Shadow(color: Colors.black, blurRadius: 10)])),
              background: Image.network(animal.imageUrl, fit: BoxFit.cover),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Chip(
                        avatar: const Icon(Icons.label, size: 16, color: Colors.white),
                        label: Text(animal.category),
                        backgroundColor: Colors.blue,
                        labelStyle: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(width: 10),
                      Chip(
                        avatar: Icon(Icons.restaurant, size: 16, color: Colors.white),
                        label: Text(animal.diet),
                        backgroundColor: dietColor,
                        labelStyle: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text("Description", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text(animal.detail, style: const TextStyle(fontSize: 16, height: 1.6, color: Colors.black87)),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity, height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: kOrangeButtonColor, foregroundColor: Colors.white),
                      onPressed: () => Navigator.pop(context),
                      child: const Text("BACK"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}