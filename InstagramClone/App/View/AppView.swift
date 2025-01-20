import SwiftUI

enum Tab {
    case feed
    case search
    case upload
    case active
    case mypage
}

struct AppView: View {
    @State var selection : Tab = .feed
    
    var body: some View {
        NavigationView {
            
            VStack {
                
                AppBar()
                
                VStack(spacing: 0) {
                    switch selection {
                    case .feed:
                        FeedView()
                    case .search:
                        Text("Search View")
                            .padding()
                    case .upload:
                        Text("Upload View")
                            .padding()
                    case .active:
                        Text("Active View")
                            .padding()
                    case .mypage:
                        Text("Mypage View")
                            .padding()
                    }
                    
                    Spacer()
                    
                    BottomNavBarView(selectedTab: $selection)
                    
                }
            }
        }
    }
}



#Preview {
    AppView()
}


