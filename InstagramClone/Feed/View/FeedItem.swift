import SwiftUI

struct FeedItem: View {
    var body : some View {
        VStack {
            header()
            images()
        }
    }

    private func header() -> some View {
        HStack {
            CircleImageView(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnnnObTCNg1QJoEd9Krwl3kSUnPYTZrxb5Ig&s", type: .bottomNav)
            Text("ugsxng99")
                .bold()
            Spacer()
            Image(systemName:"ellipsis")
        }
        .padding(.horizontal, 16)
    }
    
    private func images() -> some View {
        ImageView(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnnnObTCNg1QJoEd9Krwl3kSUnPYTZrxb5Ig&s")
    }
}

#Preview {
    FeedItem()
}
