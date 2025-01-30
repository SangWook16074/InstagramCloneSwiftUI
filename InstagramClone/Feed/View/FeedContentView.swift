import SwiftUI

struct FeedContentView: View {
    
    var body: some View {
        VStack {
            ForEach(0 ..< 100) { _ in
                FeedItem()
            }
        }
    }
}

#Preview {
    FeedContentView()
}
