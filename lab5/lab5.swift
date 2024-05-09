import Foundation

// Define categories and words
struct Category {
    let name: String
    let words: [String]
}

let citiesCategory = Category(name: "Cities", words: ["New York", "Paris", "Tokyo", "London", "Constantinople", "Sur"])
let moviesCategory = Category(name: "Movies", words: ["Inception", "Avatar", "Titanic", "Interstellar", "It"])
let booksCategory = Category(name: "Books", words: ["Harry Potter", "Lord of the Rings", "To Kill a Mockingbird", "Pride and Prejudice", "It", "Sherek"])

enum Difficulty {
    case easy, medium, hard

    var maxTries: Int {
        switch self {
        case .easy:
            return 8
        case .medium:
            return 6
        case .hard:
            return 4
        }
    }

    var wordLengthRange: ClosedRange<Int> {
        switch self {
        case .easy:
            return 1...5
        case .medium:
            return 6...10
        case .hard:
            return 11...Int.max
        }
    }
}

struct Game {
    let category: Category
    let wordToGuess: String
    var guessedLetters: Set<Character> = []
    var remainingTries: Int

    init(category: Category, difficulty: Difficulty) {
        self.category = category
        let filteredWords = category.words.filter { difficulty.wordLengthRange.contains($0.count) }
        self.wordToGuess = filteredWords.randomElement()!.lowercased()
        self.remainingTries = difficulty.maxTries
    }

    func drawBoard() {
        var displayWord = ""
        for letter in wordToGuess {
            if guessedLetters.contains(letter) {
                displayWord.append(letter)
            } else {
                displayWord.append("_")
            }
            displayWord.append(" ")
        }
        print(displayWord)
    }

    mutating func guess(letter: Character) {
        if wordToGuess.contains(letter) {
            guessedLetters.insert(letter)
        } else {
            remainingTries -= 1
            print("Incorrect guess! \(remainingTries) tries left.")
        }
    }

    mutating func play() {
        while remainingTries > 0 {
            print("Category: \(category.name)")
            drawBoard()
            print("Enter a letter:")
            if let input = readLine(), let letter = input.lowercased().first {
                guess(letter: letter)
                if wordToGuess == guessedLetters.sorted().reduce("", { $0 + String($1) }) {
                    print("Congratulations! You guessed the word: \(wordToGuess)")
                    return
                }
            }
        }
        print("Out of tries! The word was: \(wordToGuess)")
    }
}

func startGame() {
    print("Welcome to the Guess the Word game!")
    print("Choose a category:")
    let categories = [citiesCategory, moviesCategory, booksCategory]
    for (index, category) in categories.enumerated() {
        print("\(index + 1). \(category.name)")
    }

    if let categoryIndexString = readLine(),
        let categoryIndex = Int(categoryIndexString),
        categoryIndex > 0 && categoryIndex <= categories.count {

        let selectedCategory = categories[categoryIndex - 1]

        print("Choose a difficulty level:")
        print("1. Easy")
        print("2. Medium")
        print("3. Hard")

        if let difficultyIndexString = readLine(),
            let difficultyIndex = Int(difficultyIndexString),
            difficultyIndex > 0 && difficultyIndex <= 3 {

            let selectedDifficulty: Difficulty
            switch difficultyIndex {
            case 1:
                selectedDifficulty = .easy
            case 2:
                selectedDifficulty = .medium
            case 3:
                selectedDifficulty = .hard
            default:
                fatalError("Invalid difficulty index")
            }

            var game = Game(category: selectedCategory, difficulty: selectedDifficulty)
            game.play()
        } else {
            print("Invalid input. Please try again.")
            startGame()
        }

    } else {
        print("Invalid input. Please try again.")
        startGame()
    }
}

startGame()
