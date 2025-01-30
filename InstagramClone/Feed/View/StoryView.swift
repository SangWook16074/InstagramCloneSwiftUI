import SwiftUI



struct StoryView: View {
    var body : some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Spacer()
                    .frame(width: 12)
                VStack {
                    myStory()
                        .padding(.all, 8)
                    Text("내 스토리")
                        .foregroundColor(.gray)
                }
                ForEach(0 ..< 20) { index in
                    VStack {
                        otherStory()
                            .padding(.horizontal, 4)
                        Text("user \(index)")
                    }
                }
                Spacer()
                    .frame(width: 12)
            }
        }
    }
    
    private func myStory() -> some View {
        ZStack(alignment: .bottomTrailing) {
            CircleImageView(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnnnObTCNg1QJoEd9Krwl3kSUnPYTZrxb5Ig&s", type: .profile)
                .frame(width: 80, height: 80)
            
            ZStack(alignment: .center) {
                Circle()
                    .frame(width: 35, height: 35)
                    .foregroundColor(.white)
                
                Image(systemName: "plus")
                    .foregroundColor(Color.white)
                    .frame(width: 30, height: 30)
                    .background(.blue)
                    .clipShape(Circle())
            }
        }
        .padding(.vertical, 4)
    }
    
    private func otherStory() -> some View {
        ZStack(alignment: .center) {
            LinearGradient(gradient: Gradient(colors: [
                Color(hex: 0xfffce80a),
                Color(hex: 0xfffc3a0a),
                Color(hex: 0xffc80afc),
            ]), startPoint: .bottomLeading, endPoint: .topTrailing)
            .clipShape(Circle())
            .frame(width: 100, height: 100)
            
            Circle()
                .frame(width: 90, height: 90)
                .foregroundColor(.white)
            
            CircleImageView(
                imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnnnObTCNg1QJoEd9Krwl3kSUnPYTZrxb5Ig&s", type: .profile
            )
            .frame(width: 80, height: 80)
            .padding(2)



        }
        
    }
}

#Preview {
    StoryView()
}

extension Color {
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex >> 16) & 0xff) / 255
        let green = Double((hex >> 8) & 0xff) / 255
        let blue = Double((hex >> 0) & 0xff) / 255

        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}
