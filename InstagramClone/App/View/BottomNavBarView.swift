import SwiftUI

struct BottomNavBarView : View {
    @Binding var selectedTab : Tab
    var body : some View {
        HStack(alignment: .center) {
            
            TabItem(onImagePath: .bottomNavHomeOnIcon, offImagePath: .bottomNavHomeOffIcon, isActive: selectedTab == .feed)
                .onTapGesture {
                    selectedTab = .feed
                }
            .accessibilityLabel("FeedTab")
            
            TabItem(onImagePath: .bottomNavSearchOnIcon, offImagePath: .bottomNavSearchOffIcon, isActive: selectedTab == .search)
            .onTapGesture {
                selectedTab = .search
            }
            .accessibilityLabel("SearchTab")
            
            TabItem(onImagePath: .bottomNavUploadIcon, offImagePath: .bottomNavUploadIcon, isActive: true)
            .onTapGesture {
                selectedTab = .upload
            }
            .accessibilityLabel("uploadTab")
            
            
            TabItem(onImagePath: .bottomNavActiveOnIcon, offImagePath: .bottomNavActiveOffIcon, isActive: selectedTab == .active)
            .onTapGesture {
                selectedTab = .active
            }
            .accessibilityLabel("activeTab")
            
            GeometryReader { geo in
                CircleImageView(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnnnObTCNg1QJoEd9Krwl3kSUnPYTZrxb5Ig&s", type: (selectedTab == .mypage) ? .bottomNavOn : .bottomNavOff)
                    .onTapGesture {
                        selectedTab = .mypage
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                    .accessibilityLabel("MyPageOnTap")
            }
            .accessibilityLabel("mypageTab")
        }
        .frame(height: 70)
    }
}

#Preview {
    BottomNavBarView(selectedTab: .constant(.feed))
}
