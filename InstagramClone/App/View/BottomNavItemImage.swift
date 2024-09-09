//
//  BottomNavItemImage.swift
//  InstagramClone
//
//  Created by 한상욱 on 9/9/24.
//

import SwiftUI

struct BottomNavItemImage: View {
    let imagePath : ImageResource
    var body: some View {
        Image(imagePath)
            .resizable()
            .frame(width: 30, height: 30)
            .padding(30)
    }
}

#Preview {
    BottomNavItemImage(imagePath: .addFriendIcon)
}
