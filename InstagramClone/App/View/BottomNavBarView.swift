import SwiftUI

struct BottomNavBarView : View {
    @Binding var selectedTab : Tab
    var body : some View {
        HStack(alignment: .center) {
            
            TabItem(onImagePath: .bottomNavHomeOnIcon, offImagePath: .bottomNavHomeOffIcon, isActive: selectedTab == .feed)
                .onTapGesture {
                    selectedTab = .feed
                }
                .accessibilityIdentifier((selectedTab == .feed) ? "feedOnTab" : "feedOffTab")
            
            TabItem(onImagePath: .bottomNavSearchOnIcon, offImagePath: .bottomNavSearchOffIcon, isActive: selectedTab == .search)
            .onTapGesture {
                selectedTab = .search
            }
            .accessibilityIdentifier((selectedTab == .search) ? "searchOnTab" : "searchOffTab")
            
            TabItem(onImagePath: .bottomNavUploadIcon, offImagePath: .bottomNavUploadIcon, isActive: true)
            .onTapGesture {
                selectedTab = .upload
            }
            .accessibilityIdentifier("uploadTab")
            
            
            TabItem(onImagePath: .bottomNavActiveOnIcon, offImagePath: .bottomNavActiveOffIcon, isActive: selectedTab == .active)
            .onTapGesture {
                selectedTab = .active
            }
            .accessibilityIdentifier((selectedTab == .active) ? "activeOnTab" : "activeOffTab")
            
            GeometryReader { geo in
                let path = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnnnObTCNg1QJoEd9Krwl3kSUnPYTZrxb5Ig&s"
                CircleImageView(imageUrl: path, type: (selectedTab == .mypage) ? .bottomNavOn : .bottomNavOff)
                    .onTapGesture {
                        selectedTab = .mypage
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
            }
            .accessibilityIdentifier((selectedTab == .mypage) ? "mypageOnTab" : "mypageOffTab")
        }
        .frame(height: 70)
    }
}

#Preview {
    BottomNavBarView(selectedTab: .constant(.feed))
}
