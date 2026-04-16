import SwiftUI

/// The main tab bar view that provides navigation between different sections of the app.
/// Features four tabs: Home, Learn, Reflect, and Progress.
struct MainTabBarView: View {
    var body: some View {
        TabView {
            // Home tab
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            // Learn tab
            Text("Learn")
                .font(.largeTitle)
                .tabItem {
                    Label("Learn", systemImage: "book.fill")
                }
            
            // Reflect tab
            Text("Reflect")
                .font(.largeTitle)
                .tabItem {
                    Label("Reflect", systemImage: "heart.text.square.fill")
                }
            
            // Progress tab
            Text("Progress")
                .font(.largeTitle)
                .tabItem {
                    Label("Progress", systemImage: "chart.bar.fill")
                }
        }
    }
}

#Preview {
    MainTabBarView()
}



