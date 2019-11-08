//
//  buttons.swift
//  swiftui1
//
//  Created by brigitta forrai on 2019. 11. 08..
//  Copyright © 2019. brigitta forrai. All rights reserved.
//

import SwiftUI

struct Btn: View {
    @EnvironmentObject var state: State
    var num: Int
    
    init(num: Int) {
        self.num = num
    }
    
    func click (id: Int) {
        self.state.changeCurrentPage(page: "game")
        self.state.currentGameId(id: self.num)
        print("click", id)
    }
    
    var body: some View {
        Button(action: { self.click(id: self.num)}) {
            Text(String(num))
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
        }
        .frame(width: 70.0, height: 70.0)
        .background(Color.pink)
        .padding(.horizontal, 100)
        .cornerRadius(30.0)
        .offset(y: (num % 2 == 0) ? 60 : -60)
    }
}

struct Buttons: View {
    var body: some View {
       HStack(spacing: 0) {
            ForEach((1...14), id: \.self) {num in
                Btn(num: num)
            }
        }
    }
}

struct buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
