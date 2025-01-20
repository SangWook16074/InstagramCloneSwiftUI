import SwiftUI

struct AppBar : View {
    var body : some View {
        HStack {
            Image(.logo)
                .resizable()
                .frame(width: 120 ,height: 40)
                .padding(.horizontal, 8.0)
                .accessibilityIdentifier("logo")
            Spacer()
            HStack {
                Image(.likeOffIcon)
                    .resizable()
                    .frame(width: 25.0, height: 25.0)
                    .padding(.horizontal, 8.0)
                    .accessibilityIdentifier("like")
                    
                Image(.directMsgIcon)
                    .resizable()
                    .frame(width: 25.0, height: 25.0)
                    .padding(.horizontal, 8.0)
                    .accessibilityIdentifier("dm")
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 40)
        .padding(.horizontal, 8.0)
        .background(.white)
    }
}

#Preview {
    AppBar()
}

