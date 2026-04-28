import SwiftUI

/// A card view for displaying microlearning content.
/// Features a rounded square container with short text and a "Learn more" button.
struct MicrolearningCardView: View {
    /// The model supplying the card’s main copy (`item.text`); the parent list owns ordering and how many cards appear.
    let item: MicrolearningItem

    var body: some View {
        let size = UIScreen.main.bounds.width * 0.75  // 75% of screen width
        
        VStack(alignment: .leading, spacing: 16) {
            Text(item.text)
                .font(.body)
                .foregroundStyle(.primary)
                .lineLimit(3)
            
            Button("Learn more") {
                // TODO
            }
            .font(.subheadline)
            .fontWeight(.semibold)
        }
        .padding(20)
        .frame(width: size, height: size) // ← STRICT SQUARE
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(.secondarySystemBackground))
        )
    }
}

#Preview {
    MicrolearningCardView(
        item: MicrolearningItem(
            text: "Understanding your emotions is the first step to emotional intelligence."
        )
    )
    .padding()
    .background(Color(.systemBackground))
}

