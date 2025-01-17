import SwiftUI

struct ImageView : View {
    var url : String
    var body : some View {
        AsyncImage(url: URL(string: url)) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        } placeholder: {
            
        }
    }
}

#Preview {
    ImageView(url : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnnnObTCNg1QJoEd9Krwl3kSUnPYTZrxb5Ig&s")
}
