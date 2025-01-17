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
    
    @ViewBuilder var body: some View {
        VStack(spacing: 0) {
            switch selection {
                case .feed:
                    Text("Feed View")
                    .padding()
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



#Preview {
    AppView()
}


