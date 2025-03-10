//
//  CircleImageView.swift
//  InstagramClone
//
//  Created by 한상욱 on 1/17/25.
//

import SwiftUI

struct CircleImageView: View {
    let imageUrl : String
    let type : CircleImageType
    var body: some View {
        switch type {
            case .bottomNav:
                bottomNavImage
            default:
                basicCircleImage
        }
        
    }
    
    private var bottomNavImage : some View {
        basicCircleImage
            .frame(width: 40, height: 40)
    }
    
    private var basicCircleImage : some View {
        ImageView(url: imageUrl)
            .clipShape(Circle())
    }
}

enum CircleImageType {
    case bottomNav
    case profile
}

#Preview {
    CircleImageView(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnnnObTCNg1QJoEd9Krwl3kSUnPYTZrxb5Ig&s", type: .bottomNav)
}
