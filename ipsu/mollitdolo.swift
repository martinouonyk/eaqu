struct Book {
    var title: String
    var isAvailable: Bool
}

let books = [
    Book(title: "Book 1", isAvailable: true),
    Book(title: "Book 2", isAvailable: false),
    Book(title: "Book 3", isAvailable: true),
    Book(title: "Book 4", isAvailable: false)
]

let availableBooksCount = books.filter(\.isAvailable).count
print("Number of available books: \(availableBooksCount)") // Output: Number of available books: 2
