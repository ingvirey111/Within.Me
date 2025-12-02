import SwiftUI

/// A card view for displaying microlearning content.
/// Features a rounded square container with short text and a "Learn more" button.
struct MicrolearningCardView: View {
    var body: some View {
        let size = UIScreen.main.bounds.width * 0.75  // 75% of screen width
        
        VStack(alignment: .leading, spacing: 16) {
            Text("Understanding your emotions is the first step to emotional intelligence.")
                .font(.body)
                .foregroundStyle(.primary)
                .lineLimit(3)
            
            Button("Learn more") {}
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
    MicrolearningCardView()
        .padding()
        .background(Color(.systemBackground))
}

