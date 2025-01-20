import SwiftUI

struct FeedContentView: View {
    
    @Binding var isHidden: Bool
    @State var lastOffset: CGFloat = 0
    var body: some View {
        ScrollView {
            ForEach(0 ..< 100) { _ in
                Rectangle()
                    .fill(.blue)
                    .frame(height: 100)
                
            }
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
                withAnimation(.linear(duration: 1)) {
                    isHidden = true
                }
            }
            else if
                oldPhase == .interacting,
                newPhase != .animating,
                context.geometry.contentOffset.y < lastOffset
            {
                withAnimation(.linear(duration: 1)) {
                    isHidden = false
                }
            }
        }
    }
}

#Preview {
    FeedContentView(isHidden: .constant(false))
}
