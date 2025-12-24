import SwiftUI

/// A view that displays a horizontally scrollable row of quick access cards.
/// Features a section title and multiple QuickAccessCardView components.
struct QuickAccessView: View {
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
                    // First card with lesson activity
                    VStack(spacing: 8) {
                        QuickAccessCardView()
                        
                        Text("Continue lesson")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        
                        Button(action: {
                            // TODO: Navigate to lesson or resume progress
                        }) {
                            Text("Resume")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundStyle(.blue)
                        }
                    }
                    
                    // Second card with practice activity
                    VStack(spacing: 8) {
                        QuickAccessCardView()       
                        
                        Text("Continue practice")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        
                        Button(action: {
                            // TODO: Navigate to practice or resume progress
                        }) {
                            Text("Resume")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundStyle(.blue)
                        }
                    }
                    
                    // Third card with exercise activity
                    VStack(spacing: 8) {
                        QuickAccessCardView()
                        
                        Text("Continue exercise")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        
                        Button(action: {
                            // TODO: Navigate to exercise or resume progress
                        }) {
                            Text("Resume")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundStyle(.blue)
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    QuickAccessView()
        .padding(.vertical)
        .background(Color(.systemBackground))
}

