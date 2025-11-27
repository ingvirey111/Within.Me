import SwiftUI

/// A section view for the emotions check-in feature.
/// Displays a title, themed image, descriptive text, and a call-to-action button.
struct CheckInSectionView: View {
    var body: some View {
        VStack(spacing: 16) {
            // Section title
            Text("Emotions Check-In")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.primary)
            
            // Themed placeholder image related to emotions
            Image(systemName: "heart.text.square.fill")
                .font(.system(size: 80))
                .foregroundStyle(
                    LinearGradient(
                        colors: [.pink, .purple],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .padding(.vertical, 8)
            
            // Descriptive subtitle
            Text("How are you feeling today?")
                .font(.body)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            // Centered "Begin" button
            Button(action: {
                // TODO: Navigate to check-in flow
            }) {
                Text("Begin")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .background(
                        LinearGradient(
                            colors: [.pink, .purple],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .cornerRadius(12)
            }
            .padding(.horizontal, 24)
            .padding(.top, 8)
        }
        .padding(.vertical, 24)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    CheckInSectionView()
        .padding()
        .background(Color(.systemBackground))
}

