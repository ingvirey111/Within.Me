import SwiftUI

/// A view that displays a horizontally scrollable row of microlearning cards.
/// Features a section title and multiple MicrolearningCardView components.
struct DailyMicrolearningView: View {
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
                    // Multiple microlearning cards
                    MicrolearningCardView()
                    MicrolearningCardView()
                    MicrolearningCardView()
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    DailyMicrolearningView()
        .padding(.vertical)
        .background(Color(.systemBackground))
}

