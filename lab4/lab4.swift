import Foundation

struct Location {
    let id: Int
    let type: String
    let name: String
    let rating: Int
}

struct City {
    let id: Int
    let name: String
    let description: String
    let latitude: Double
    let longitude: Double
    let keywords: [String]
    var locations: [Location]
}

let cities: [City] = [
    City(id: 1, name: "New York", description: "The Big Apple", latitude: 40.7128, longitude: -74.0060, keywords: ["urban", "culture", "food"], locations: [
        Location(id: 1, type: "Restaurant", name: "Le Bernardin", rating: 5),
        Location(id: 2, type: "Pub", name: "The Dead Rabbit", rating: 4),
        Location(id: 3, type: "Museum", name: "The Metropolitan Museum of Art", rating: 5)
    ]),
    City(id: 2, name: "Los Angeles", description: "The City of Angels", latitude: 34.0522, longitude: -118.2437, keywords: ["urban", "film", "beach"], locations: [
        Location(id: 4, type: "Restaurant", name: "Providence", rating: 5),
        Location(id: 5, type: "Pub", name: "The Varnish", rating: 4),
        Location(id: 6, type: "Museum", name: "The Getty Center", rating: 5)
    ]),
    City(id: 3, name: "London", description: "The Big Smoke", latitude: 51.5074, longitude: -0.1278, keywords: ["historic", "culture", "theatre"], locations: [
        Location(id: 7, type: "Restaurant", name: "Dinner by Heston Blumenthal", rating: 5),
        Location(id: 8, type: "Pub", name: "Ye Olde Cheshire Cheese", rating: 4),
        Location(id: 9, type: "Museum", name: "The British Museum", rating: 5)
    ]),
    City(id: 4, name: "Paris", description: "The City of Love", latitude: 48.8566, longitude: 2.3522, keywords: ["romantic", "historic", "art"], locations: [
        Location(id: 10, type: "Restaurant", name: "Epicure", rating: 5),
        Location(id: 11, type: "Pub", name: "Harry's New York Bar", rating: 4),
        Location(id: 12, type: "Museum", name: "The Louvre", rating: 5)
    ]),
    City(id: 5, name: "Tokyo", description: "The Capital of Japan", latitude: 35.6895, longitude: 139.6917, keywords: ["vibrant", "technology", "food"], locations: [
        Location(id: 13, type: "Restaurant", name: "Sukiyabashi Jiro", rating: 5),
        Location(id: 14, type: "Pub", name: "Golden Gai", rating: 4),
        Location(id: 15, type: "Museum", name: "Tokyo National Museum", rating: 5)
    ]),
    City(id: 6, name: "Sydney", description: "The Harbour City", latitude: -33.8688, longitude: 151.2093, keywords: ["beach", "harbour", "outdoors"], locations: [
        Location(id: 16, type: "Restaurant", name: "Quay", rating: 5),
        Location(id: 17, type: "Pub", name: "The Baxter Inn", rating: 4),
        Location(id: 18, type: "Museum", name: "Art Gallery of New South Wales", rating: 5)
    ]),
    City(id: 7, name: "Rio de Janeiro", description: "The Marvelous City", latitude: -22.9068, longitude: -43.1729, keywords: ["beach", "carnival", "samba"], locations: [
        Location(id: 19, type: "Restaurant", name: "Oro", rating: 5),
        Location(id: 20, type: "Pub", name: "Bar Astor", rating: 4),
        Location(id: 21, type: "Museum", name: "Museum of Tomorrow", rating: 5)
    ]),
    City(id: 8, name: "Rome", description: "The Eternal City", latitude: 41.9028, longitude: 12.4964, keywords: ["historic", "art", "architecture"], locations: [
        Location(id: 22, type: "Restaurant", name: "La Pergola", rating: 5),
        Location(id: 23, type: "Pub", name: "Ma Che Siete Venuti A Fà", rating: 4),
        Location(id: 24, type: "Museum", name: "Vatican Museums", rating: 5)
    ]),
    City(id: 9, name: "Istanbul", description: "The Gateway to the East and the West", latitude: 41.0082, longitude: 28.9784, keywords: ["historic", "culture", "mosques"], locations: [
        Location(id: 25, type: "Restaurant", name: "Mikla", rating: 5),
        Location(id: 26, type: "Pub", name: "Efendi Bar", rating: 4),
        Location(id: 27, type: "Museum", name: "Hagia Sophia", rating: 5)
    ]),
    City(id: 10, name: "Cape Town", description: "The Mother City", latitude: -33.9249, longitude: 18.4241, keywords: ["beach", "nature", "wine"], locations: [
        Location(id: 28, type: "Restaurant", name: "The Test Kitchen", rating: 5),
        Location(id: 29, type: "Pub", name: "The Gin Bar", rating: 4),
        Location(id: 30, type: "Museum", name: "Zeitz Museum of Contemporary Art Africa", rating: 5)
    ]),
    City(id: 11, name: "Seoul", description: "The Capital of South Korea", latitude: 37.5665, longitude: 126.9780, keywords: ["dynamic", "technology", "tradition"], locations: [
        Location(id: 31, type: "Restaurant", name: "Jungsik", rating: 5),
        Location(id: 32, type: "Pub", name: "The Bar at Maison Seoul", rating: 4),
        Location(id: 33, type: "Museum", name: "National Museum of Korea", rating: 5)
    ]),
        City(id: 12, name: "Moscow", description: "The Capital of Russia", latitude: 55.7558, longitude: 37.6173, keywords: ["historic", "culture", "architecture"], locations: [
        Location(id: 34, type: "Restaurant", name: "White Rabbit", rating: 5),
        Location(id: 35, type: "Pub", name: "Mendeleev Bar", rating: 4),
        Location(id: 36, type: "Museum", name: "The State Tretyakov Gallery", rating: 5)
    ]),
    City(id: 13, name: "Dubai", description: "The City of Gold", latitude: 25.2769, longitude: 55.2962, keywords: ["luxury", "modern", "desert"], locations: [
        Location(id: 37, type: "Restaurant", name: "Nathan Outlaw at Al Mahara", rating: 5),
        Location(id: 38, type: "Pub", name: "Vault Bar", rating: 4),
        Location(id: 39, type: "Museum", name: "Dubai Museum", rating: 5)
    ]),
    City(id: 14, name: "Berlin", description: "The Capital of Germany", latitude: 52.5200, longitude: 13.4050, keywords: ["historic", "nightlife", "art"], locations: [
        Location(id: 40, type: "Restaurant", name: "Tim Raue", rating: 5),
        Location(id: 41, type: "Pub", name: "Klunkerkranich", rating: 4),
        Location(id: 42, type: "Museum", name: "Pergamon Museum", rating: 5)
    ]),
    City(id: 15, name: "Bangkok", description: "The Capital of Thailand", latitude: 13.7563, longitude: 100.5018, keywords: ["vibrant", "food", "temples"], locations: [
        Location(id: 43, type: "Restaurant", name: "Gaggan", rating: 5),
        Location(id: 44, type: "Pub", name: "Sky Bar", rating: 4),
        Location(id: 45, type: "Museum", name: "The National Museum Bangkok", rating: 5)
    ]),
    City(id: 16, name: "Mumbai", description: "The Financial Capital of India", latitude: 19.0760, longitude: 72.8777, keywords: ["vibrant", "culture", "film"], locations: [
        Location(id: 46, type: "Restaurant", name: "Masque", rating: 5),
        Location(id: 47, type: "Pub", name: "The Irish House", rating: 4),
        Location(id: 48, type: "Museum", name: "Chhatrapati Shivaji Maharaj Vastu Sangrahalaya", rating: 5)
    ]),
    City(id: 17, name: "Toronto", description: "The Capital of Ontario", latitude: 43.6510, longitude: -79.3470, keywords: ["urban", "multicultural", "arts"], locations: [
        Location(id: 49, type: "Restaurant", name: "Alo Restaurant", rating: 5),
        Location(id: 50, type: "Pub", name: "Bar Isabel", rating: 4),
        Location(id: 51, type: "Museum", name: "Royal Ontario Museum", rating: 5)
    ]),
    City(id: 18, name: "Buenos Aires", description: "The Capital of Argentina", latitude: -34.6037, longitude: -58.3816, keywords: ["tango", "culture", "food"], locations: [
        Location(id: 52, type: "Restaurant", name: "Tegui", rating: 5),
        Location(id: 53, type: "Pub", name: "Florería Atlántico", rating: 4),
        Location(id: 54, type: "Museum", name: "Museo Nacional de Bellas Artes", rating: 5)
    ]),
    City(id: 19, name: "Cairo", description: "The Capital of Egypt", latitude: 30.0444, longitude: 31.2357, keywords: ["historic", "ancient", "culture"], locations: [
        Location(id: 55, type: "Restaurant", name: "Kebdet El Prince", rating: 5),
        Location(id: 56, type: "Pub", name: "The Tap Maadi", rating: 4),
        Location(id: 57, type: "Museum", name: "Egyptian Museum", rating: 5)
    ]),
    City(id: 20, name: "São Paulo", description: "The Largest City in Brazil", latitude: -23.5505, longitude: -46.6333, keywords: ["vibrant", "culture", "nightlife"], locations: [
        Location(id: 58, type: "Restaurant", name: "D.O.M.", rating: 5),
        Location(id: 59, type: "Pub", name: "Bar Veloso", rating: 4),
        Location(id: 60, type: "Museum", name: "MASP - Museu de Arte de São Paulo Assis Chateaubriand", rating: 5)
    ])
]

func searchCity(withName name: String) -> [City] {
    return cities.filter { $0.name.lowercased().contains(name.lowercased()) }
}

func searchCity(withKeyword keyword: String) -> [City] {
    return cities.filter { $0.keywords.contains(keyword.lowercased()) }
}

// Distance calculation using Haversine formula
func calculateDistance(from source: City, to destination: City) -> Double {
    let earthRadius: Double = 6371 // Earth's radius in kilometers
    let sourceLatInRadians = source.latitude * Double.pi / 180
    let destinationLatInRadians = destination.latitude * Double.pi / 180
    let deltaLatInRadians = (destination.latitude - source.latitude) * Double.pi / 180
    let deltaLonInRadians = (destination.longitude - source.longitude) * Double.pi / 180
    
    let a = sin(deltaLatInRadians / 2) * sin(deltaLatInRadians / 2) +
            cos(sourceLatInRadians) * cos(destinationLatInRadians) *
            sin(deltaLonInRadians / 2) * sin(deltaLonInRadians / 2)
    let c = 2 * atan2(sqrt(a), sqrt(1 - a))
    let distance = earthRadius * c
    
    return distance
}

func closestAndFarthestCity(from userLocation: City) {
    var closestCity: City?
    var farthestCity: City?
    var closestDistance = Double.greatestFiniteMagnitude
    var farthestDistance = 0.0
    
    for city in cities {
        if city.id == userLocation.id { continue } // Skip comparing with itself
        let distance = calculateDistance(from: userLocation, to: city)
        
        if distance < closestDistance {
            closestDistance = distance
            closestCity = city
        }
        
        if distance > farthestDistance {
            farthestDistance = distance
            farthestCity = city
        }
    }
    
    print("Closest city: \(closestCity?.name ?? "Unknown")")
    print("Farthest city: \(farthestCity?.name ?? "Unknown")")
}

func twoFarthestCities() {
    var farthestPair: (City, City)? = nil
    var maxDistance = 0.0
    
    for i in 0..<cities.count {
        for j in i+1..<cities.count {
            let distance = calculateDistance(from: cities[i], to: cities[j])
            if distance > maxDistance {
                maxDistance = distance
                farthestPair = (cities[i], cities[j])
            }
        }
    }
    
    if let pair = farthestPair {
        print("Farthest cities: \(pair.0.name) and \(pair.1.name)")
    } else {
        print("No cities found.")
    }
}

extension City {
    func restaurantsWithFiveStarRating() -> [Location] {
        return self.locations.filter { $0.type.lowercased() == "restaurant" && $0.rating == 5 }
    }
    
    func relatedLocationsSortedByRating() -> [Location] {
        return self.locations.sorted { $0.rating > $1.rating }
    }
    
    func citiesWithFiveStarRatingLocations() {
        let fiveStarLocations = self.locations.filter { $0.rating == 5 }
        print("\(self.name) has \(fiveStarLocations.count) location(s) with 5-star rating:")
        for location in fiveStarLocations {
            print("- \(location.name)")
        }
    }
}

let newYork = cities[0]
print(searchCity(withName: "Buenos"))
print(searchCity(withKeyword: "food"))
print(calculateDistance(from: newYork, to: cities[1]))
closestAndFarthestCity(from: newYork)
twoFarthestCities()
print(newYork.restaurantsWithFiveStarRating())
print(newYork.relatedLocationsSortedByRating())
newYork.citiesWithFiveStarRatingLocations()
