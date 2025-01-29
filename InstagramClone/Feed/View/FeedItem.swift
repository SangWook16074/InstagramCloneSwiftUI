import SwiftUI

struct FeedItem: View {
    var body : some View {
        VStack {
            header()
        }
    }

    private func header() -> some View {
        Text("header")
    }
}

#Preview {
    FeedItem()
}
