import SwiftUI

struct AppView: View {
    @State var selection : TabType = .feed
    
    var body: some View {
        TabView(selection: $selection) {
            Text("Feed View")
                .tabItem {
                    (selection == .feed) ? Image(.bottomNavHomeOnIcon)
                        .accessibilityLabel("FeedOnTap")
                        
                    : Image(.bottomNavHomeOffIcon)
                        .accessibilityLabel("FeedOffTap")
                        
                }
                
                .tag(TabType.feed)
                
            Text("Search View")
                .tabItem {
                    (selection == .search) ? Image(.bottomNavSearchOnIcon)
                        .accessibilityLabel("SearchOnTap")
                    
                    : Image(.bottomNavSearchOffIcon)
                        .accessibilityLabel("SearchOffTap")
                }
                .tag(TabType.search)
                
            Text("Upload View")
                .tabItem {
                    Image(.bottomNavUploadIcon)
                        .accessibilityLabel("UploadTap")
                }
                .tag(TabType.upload)
                
            Text("Active View")
                .tabItem {
                    (selection == .active) ? Image(.bottomNavActiveOnIcon)
                        .accessibilityLabel("ActiveOnTap")
                    : Image(.bottomNavActiveOffIcon)
                        .accessibilityLabel("ActiveOffTap")
                }
                .tag(TabType.active)
                
            Text("Mypage View")
                .tabItem {
                    (selection == .mypage) ? Image(.bottomNavHomeOnIcon)
                        .accessibilityLabel("MyPageOnTap")
                        : Image(.bottomNavHomeOffIcon)
                        .accessibilityLabel("MyPageOffTap")
                }
                .tag(TabType.mypage)
                
        }
    }
}



#Preview {
    AppView()
}


enum TabType {
    case feed
    case search
    case upload
    case active
    case mypage
}
