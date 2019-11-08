import SwiftUI

struct Game: View {
    @EnvironmentObject var state: State
    
    var body: some View {
        VStack {
            HStack {
                Text("game")
                Text(String(self.state.gameId))
            }
            
            Grid()
            
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

struct Game_Previews: PreviewProvider {
    static var previews: some View {
        Game()
    }
}
