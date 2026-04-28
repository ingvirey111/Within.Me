import SwiftUI

/// A view that displays a horizontally scrollable row of microlearning cards.
/// Features a section title and multiple MicrolearningCardView components.
struct DailyMicrolearningView: View {
    /// Microlearning snippets to show in the horizontal row—each becomes one `MicrolearningCardView`.
    let items: [MicrolearningItem]

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Section title
            Text("Daily Microlearning")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.primary)
                .padding(.horizontal)
            
            // Horizontally scrollable row of cards
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(items) { item in
                        MicrolearningCardView(item: item)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    DailyMicrolearningView(
        items: [
            MicrolearningItem(
                text: "Understanding your emotions is the first step to emotional intelligence."
            ),
            MicrolearningItem(
                text: "Naming a feeling can make it easier to respond instead of react."
            ),
            MicrolearningItem(
                text: "Small pauses between tasks help your nervous system reset."
            )
        ]
    )
    .padding(.vertical)
    .background(Color(.systemBackground))
}

