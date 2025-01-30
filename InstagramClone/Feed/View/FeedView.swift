import SwiftUI

struct FeedView : View {
    @State private var isHidden : Bool = false
    @State var lastOffset: CGFloat = 0
    var topEdge : CGFloat = 40
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                ScrollView {
                    Spacer()
                        .frame(height: 1)
                    
                    StoryView()
                    
                    FeedContentView()
                }
                .onScrollPhaseChange { oldPhase, newPhase, context in
                    if newPhase == .interacting {
                        lastOffset = context.geometry.contentOffset.y
                    }
                    if
                        oldPhase == .interacting,
                        newPhase != .animating,
                        context.geometry.contentOffset.y > lastOffset
                    {
                        withAnimation(.linear(duration: 0.1)) {
                            isHidden = true
                        }
                    }
                    else if
                        oldPhase == .interacting,
                        newPhase != .animating,
                        context.geometry.contentOffset.y < lastOffset
                    {
                        withAnimation(.linear(duration: 0.1)) {
                            isHidden = false
                        }
                    }
                }
                .safeAreaPadding(.top, isHidden ? 0 : topEdge)
                
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

    
    private func logo() ->some View {
        Image(.logo)
            .resizable()
            .frame(width: 120 ,height: 40)
            .padding(.horizontal, 8.0)
            .opacity(isHidden ? 0 : 1)
            .accessibilityIdentifier("logo")
    }
    
    
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
