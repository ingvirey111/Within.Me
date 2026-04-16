import SwiftUI

/// A view that displays a horizontally scrollable row of quick access cards.
/// Features a section title and multiple QuickAccessCardView components.
struct QuickAccessView: View {
    /// Quick-access entries to render as a horizontal row—each becomes one card plus title and action button.
    let items: [QuickAccessItem]

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Section title
            Text("Quick Access")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.primary)
                .padding(.horizontal)
            
            // Horizontally scrollable row of cards
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(items) { item in
                        VStack(spacing: 8) {
                            QuickAccessCardView(item: item)

                            Text(item.title)
                                .font(.subheadline)
                                .foregroundStyle(.secondary)

                            Button(action: {
                                // TODO: Navigate to lesson or resume progress
                            }) {
                                Text(item.actionText)
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.blue)
                            }
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    QuickAccessView(
        items: [
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
    )
    .padding(.vertical)
    .background(Color(.systemBackground))
}

