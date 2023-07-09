class PlaceInfo {
  final String location, image, name, desc;
  final int distance, days;

  PlaceInfo({
    required this.desc,
    required this.name,
    required this.image,
    required this.location,
    required this.distance,
    required this.days,
  });
}

List places = [
  PlaceInfo(
    name: "Chittorgarh-fort",
    image: "assets/image/Chittorgarh-Fort.png",
    location: "India",
    distance: 50000,
    days: 12,
    desc:
        "Chittorgarh Fort is also called the Water Fort as it had 84 water bodies once, but now there are only 22 of them left. The two major attractions of the fort are the towers Vijay Stambh and Kirti Stambh. Vijay Stambh refers to the tower of victory and the Kirti Stambh means tower of fame.",
  ),
  PlaceInfo(
    name: "Cinque-Terre-Italy",
    image: "assets/image/Cinque-Terre-Italy.jpeg",
    location: "Italy",
    distance: 115000,
    days: 08,
    desc:
        "Stretching 15 km along the Italian Riviera coast between Levanto and La Spezia in northwestern Italy, Cinque Terre is a steep seaside landscape that humans have transformed with stone walled terraces for growing grape vines and olive trees. Agriculture and tourism drive the economy",
  ),
  PlaceInfo(
    name: "Galapagos-Island",
    image: "assets/image/Galapagos-Islands.jpeg",
    location: "Ireland",
    distance: 500000,
    days: 20,
    desc:
        "The Galapagos Rise is a divergent boundary located between the South American coast and the triple junction of the Nazca Plate, the Cocos Plate, and the Pacific Plate. The volcanically active Galapagos Islands exist on the Galápagos hotspot above the Galapagos Rise.",
  ),
  PlaceInfo(
    name: "Kyoto",
    image: "assets/image/Kyoto-Japan.jpeg",
    location: "Japan",
    distance: 600000,
    days: 22,
    desc:
        "Kyoto, located in the Kansai region of Japan, is the country's seventh largest city, with a population of 1.4 million people. Steeped in history, Kyoto is home to roughly one quarter of Japan's national treasures, countless shrines and temples, and seventeen sites recognized by UNESCO as World Heritage Sites.",
  ),
];

