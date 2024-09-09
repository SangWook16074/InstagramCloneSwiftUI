import SwiftUI

struct AppView : View {
    @State private var pageIndex : Page = .home
    var body : some View {
        TabView(selection: $pageIndex) {
            Text("Home")
                .tabItem {
                    Label("", image: (pageIndex == .home) ? .bottomNavHomeOnIcon : .bottomNavHomeOffIcon)
                    
                }
                .tag(Page.home)
            Text("Search")
                .tabItem {
                    Label("", image: (pageIndex == .search) ? .bottomNavSearchOnIcon : .bottomNavSearchOffIcon)
                }
                .tag(Page.search)
            Text("Upload")
                .tabItem {
                    Label("", image: .bottomNavUploadIcon)
                }
                .tag(Page.upload)
            Text("Favorite")
                .tabItem {
                    Label("", image: (pageIndex == .favorite) ? .bottomNavActiveOnIcon : .bottomNavActiveOffIcon)
                }
                .tag(Page.favorite)
            Text("MyPage")
                .tabItem {
                    Label("", image: (pageIndex == .mypage) ? .bottomNavHomeOnIcon : .bottomNavHomeOffIcon)
                }.tag(Page.mypage)
        }
    }
}

enum Page {
    case home, search, upload, favorite, mypage
}

#Preview {
    AppView()
}
