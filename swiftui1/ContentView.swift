//
//  ContentView.swift
//  swiftui1
//
//  Created by brigitta forrai on 2019. 11. 07..
//  Copyright © 2019. brigitta forrai. All rights reserved.
//

import SwiftUI
import Combine


struct ContentView: View {
    @EnvironmentObject var state: State
    
    var body: some View {
        NavigationView {
            if self.state.page == "home" {
                Home()
            } else if self.state.page == "game" {
                Game()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
