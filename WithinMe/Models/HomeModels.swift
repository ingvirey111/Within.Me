import Foundation

// MARK: - Home screen models

/// Content for a quick-access card on the home screen (image, body copy, and action label).
struct QuickAccessItem: Identifiable {
    let id = UUID()
    /// Short label shown below the card (e.g. “Continue lesson”).
    let title: String
    /// Main descriptive text inside the card.
    let description: String
    /// SF Symbol name for the card’s image.
    let systemImageName: String
    /// Title of the tappable action under the card.
    let actionText: String
}

/// A single microlearning snippet for daily tips or cards.
struct MicrolearningItem: Identifiable {
    let id = UUID()
    /// The microlearning copy shown in the UI.
    let text: String
}
