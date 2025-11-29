import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            GreetingHeaderView()
            
            CheckInSectionView()

            Spacer()
        }
        .padding(.top, 32)
    }
}

#Preview {
    ContentView()
}
