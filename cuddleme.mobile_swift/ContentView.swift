import SwiftUI
import SwiftfulRouting

	
struct ContentView: View {
  @Environment(AuthViewModel.self) private var authViewModel: AuthViewModel
  
	var body: some View {
    Group {
      if authViewModel.userSession != nil {
        DashboardView()
      }else {
        SignUpView()
      }
    }
	}
}

#Preview {
	ContentView()
}
