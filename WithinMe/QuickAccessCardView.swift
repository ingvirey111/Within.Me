import SwiftUI

/// A square card view for quick access to activities or exercises.
/// Features an image and descriptive text.
struct QuickAccessCardView: View {
    var body: some View {
        let size = UIScreen.main.bounds.width * 0.75  // 75% of screen width
        
        VStack(alignment: .leading, spacing: 0) {
            Spacer()
            
            // Centered image and text group
            VStack(alignment: .leading, spacing: 12) {
                // Image placeholder
                Image(systemName: "figure.mind.and.body")
                    .font(.system(size: 50))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.blue, .cyan],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(maxWidth: .infinity, alignment: .center)
                
                // Descriptive text
                Text("Practice mindfulness exercises to build emotional awareness.")
                    .font(.body)
                    .foregroundStyle(.primary)
                    .lineLimit(3)
                    .multilineTextAlignment(.leading)
            }
            
            Spacer()
        }
        .padding(20)
        .frame(width: size, height: size) // Square card
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(.secondarySystemBackground))
        )
    }
}

#Preview {
    QuickAccessCardView()
        .padding()
        .background(Color(.systemBackground))
}

