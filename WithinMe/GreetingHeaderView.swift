import SwiftUI

/// A header view that displays a time-based greeting message along with action icons.
/// The greeting automatically updates based on the current time of day.
struct GreetingHeaderView: View {
    /// Computed property that returns an appropriate greeting based on the current hour.
    /// - Returns: A greeting string ("Good morning", "Good afternoon", "Good evening", or "Good night")
    private var greeting: String {
        // Get the current hour (0-23) from the system calendar
        let hour = Calendar.current.component(.hour, from: Date())
        
        // Return greeting based on time of day
        switch hour {
        case 5..<12:      // 5:00 AM - 11:59 AM
            return "Good morning"
        case 12..<17:     // 12:00 PM - 4:59 PM
            return "Good afternoon"
        case 17..<22:     // 5:00 PM - 9:59 PM
            return "Good evening"
        default:          // 10:00 PM - 4:59 AM
            return "Good night"
        }
    }
    
    var body: some View {
        // Main horizontal stack containing greeting text and icons
        HStack(alignment: .center) {
            // Time-based greeting text on the left
            Text(greeting)
                .font(.title2)
                .fontWeight(.semibold)

            // Spacer pushes icons to the right side
            Spacer()

            // Icon group on the right side
            HStack(spacing: 16) {
                // Streak/flame icon (e.g., for daily streak tracking)
                Image(systemName: "flame.fill")
                    .font(.title3)
                    .foregroundStyle(.orange)

                // Profile icon (e.g., for user profile access)
                Image(systemName: "person.crop.circle")
                    .font(.title3)
                    .foregroundStyle(.secondary)
            }
        }
        .padding(.horizontal)      // Horizontal padding for side margins
        .padding(.vertical, 8)    // Vertical padding for top/bottom spacing
    }
}

// SwiftUI preview for development and design
#Preview {
    GreetingHeaderView()
        .previewLayout(.sizeThatFits)
        .padding()
}
