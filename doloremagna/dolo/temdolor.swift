struct ContentView: View {
    @Environment(\.myCustomKey) var customValue

    var body: some View {
        Text("Custom Value: \(customValue)")
    }
}

struct MyCustomKey: EnvironmentKey {
    static let defaultValue: String = "Default Value"
}

extension EnvironmentValues {
    var myCustomKey: String {
        get { self[MyCustomKey.self] }
        set { self[MyCustomKey.self] = newValue }
    }
}

struct ParentView: View {
    var body: some View {
        ChildView()
            .environment(\.myCustomKey, "Hello, World!")
    }
}

struct ChildView: View {
    var body: some View {
        ContentView()
    }
}
