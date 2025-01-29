import SwiftUI

struct FeedView : View {
    @State private var isHidden : Bool = false
    var topEdge : CGFloat = 40
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                VStack {
                    Spacer()
                        .frame(height: 1)
                    FeedContentView(isHidden: $isHidden)
                }
                
                HStack {
                    logo()
                    Spacer()
                    trailItems()
                }
                .padding(.horizontal, 16)
                .background(Color.white)
                .offset(y: isHidden ? -topEdge : 0)
            }
        }
    }

    
    
    @ViewBuilder
    private func logo() ->some View {
        Image(.logo)
            .resizable()
            .frame(width: 120 ,height: 40)
            .padding(.horizontal, 8.0)
            .opacity(isHidden ? 0 : 1)
            .accessibilityIdentifier("logo")
            
    }
    
    @ViewBuilder
    private func trailItems() -> some View {
        HStack {
                Image(.likeOffIcon)
                    .resizable()
                    .frame(width: 25.0, height: 25.0)
                    .padding(.horizontal, 8.0)
                    .opacity(isHidden ? 0 : 1)
                    .accessibilityIdentifier("like")
                
                Image(.directMsgIcon)
                    .resizable()
                    .frame(width: 25.0, height: 25.0)
                    .padding(.horizontal, 8.0)
                    .opacity(isHidden ? 0 : 1)
                    .accessibilityIdentifier("dm")
            }
    }
}

#Preview {
    FeedView()
}
