import SwiftUI

struct TabItem : View {
    let onImagePath : ImageResource
    let offImagePath : ImageResource
    let isActive : Bool
    var body : some View {
        GeometryReader { geo in
            Image((isActive) ? onImagePath : offImagePath)
                .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

#Preview {
    TabItem(onImagePath: .bottomNavHomeOnIcon, offImagePath: .bottomNavHomeOffIcon, isActive: false)
}
