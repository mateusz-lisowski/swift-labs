import Foundation


enum VideoType {
    case movie
    case music
    case vlog
    case tutorial
}

struct VideoMetadata {
    let title: String
    let description: String
    let duration: Int 
    let uploadDate: Date
}

struct Video {
    let id: String
    let metadata: VideoMetadata
    let type: VideoType
    var views: Int
    var likes: Int
    var dislikes: Int
}

class Channel {
    let id: String
    let name: String
    var subscribers: Int
    var videos: [Video]
    
    init(id: String, name: String, subscribers: Int) {
        self.id = id
        self.name = name
        self.subscribers = subscribers
        self.videos = []
    }
}

class User {
    let id: String
    var username: String
    var subscriptions: [Channel]
    
    init(id: String, username: String) {
        self.id = id
        self.username = username
        self.subscriptions = []
    }
}

func printVideoMetadataFormattedDate(_ metadata: VideoMetadata) {
    print("Title: \(metadata.title)")
    print("Description: \(metadata.description)")
    print("Duration: \(metadata.duration) seconds")
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MMM d, yyyy"
    print("Upload Date: \(dateFormatter.string(from: metadata.uploadDate))")
}

func formatLikes(_ likes: Int) -> String {
    if likes >= 1000 {
        return "\(likes / 1000)k"
    } else {
        return "\(likes)"
    }
}

func printVideoDetailsFormattedLikes(_ video: Video) {
    print("ID: \(video.id)")
    printVideoMetadataFormattedDate(video.metadata)
    print("Type: \(video.type)")
    print("Views: \(video.views)")
    print("Likes: \(formatLikes(video.likes))")
    print("Dislikes: \(video.dislikes)")
    print("-------------------------")
}

let videoMetadata1 = VideoMetadata(title: "Learn Swift Programming", description: "In this tutorial, we'll learn the basics of Swift programming language.", duration: 1200, uploadDate: Date())
let video1 = Video(id: "abc123", metadata: videoMetadata1, type: .tutorial, views: 10000, likes: 500, dislikes: 10)

let videoMetadata2 = VideoMetadata(title: "Vlog: A Day in New York City", description: "Join me as I explore the bustling streets of New York City.", duration: 1800, uploadDate: Date())
let video2 = Video(id: "def456", metadata: videoMetadata2, type: .vlog, views: 5000, likes: 2000000, dislikes: 5)

let channel = Channel(id: "channel123", name: "Tech Tutorials", subscribers: 100000)
channel.videos = [video1, video2]

let user = User(id: "user123", username: "example_user")
user.subscriptions.append(channel)

let feed: [Video] = [video1, video2]

for video in feed {
    printVideoDetailsFormattedLikes(video)
}
