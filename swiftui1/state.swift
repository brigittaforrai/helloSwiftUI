//
//  state.swift
//  swiftui1
//
//  Created by brigitta forrai on 2019. 11. 08..
//  Copyright © 2019. brigitta forrai. All rights reserved.
//

import Foundation

class State: ObservableObject {
    @Published var page: String = "home"
    @Published var gameId: Int = 0
    
    func changeCurrentPage(page: String) {
        self.page = page
    }
    
    func currentGameId(id: Int) {
        self.gameId = id
    }
}
