import SwiftUI

/// The main home screen view that serves as a container for all home screen components.
/// Includes greeting header, emotions check-in section, daily microlearning cards, and quick access activities.
struct HomeView: View {
    private let quickAccessItems: [QuickAccessItem] = [
        QuickAccessItem(
            title: "Continue lesson",
            description: "Practice mindfulness exercises to build emotional awareness.",
            systemImageName: "figure.mind.and.body",
            actionText: "Resume"
        ),
        QuickAccessItem(
            title: "Continue practice",
            description: "Build emotional awareness through guided reflection.",
            systemImageName: "leaf.fill",
            actionText: "Resume"
        ),
        QuickAccessItem(
            title: "Continue exercise",
            description: "Strengthen your emotional habits daily.",
            systemImageName: "figure.walk",
            actionText: "Resume"
        )
    ]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                // Greeting header with time-based message and icons
                GreetingHeaderView()
                
                // Emotions check-in section
                CheckInSectionView()
                
                // Daily microlearning cards in horizontal scroll
                DailyMicrolearningView()
                
                // Quick access cards with activities
                QuickAccessView(items: quickAccessItems)
            }
            .padding(.top, 32)
            .padding(.bottom, 24)
        }
    }
}

#Preview {
    HomeView()
}

