import SwiftUI

struct AppBar : View {
    var body : some View {
        HStack {
            Image(.logo)
                .resizable()
                .frame(width: 120 ,height: 40)
                .accessibilityIdentifier("logo")
            Spacer()
            HStack {
                Image(.likeOffIcon)
                    .resizable()
                    .frame(width: 30.0, height: 30.0)
                    .padding(.horizontal, 8.0)
                    .accessibilityIdentifier("like")
                    
                Image(.directMsgIcon)
                    .resizable()
                    .frame(width: 30.0, height: 30.0)
                    .padding(.horizontal, 10.0)
                    .accessibilityIdentifier("dm")
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    AppBar()
}
