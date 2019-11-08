import SwiftUI

struct Game: View {
    @EnvironmentObject var state: State
    
    var body: some View {
        VStack {
            HStack {
                Text("game")
                Text(String(self.state.gameId))
            }
            
            Spacer()
            
            Button(action: {
                self.state.changeCurrentPage(page: "home")
                self.state.currentGameId(id: 0)
            }) {
                Text("Back")
            }
        }
    }
}
