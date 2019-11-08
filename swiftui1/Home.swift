//
//  Home.swift
//  swiftui1
//
//  Created by brigitta forrai on 2019. 11. 08..
//  Copyright © 2019. brigitta forrai. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
            Color(red: 137 / 255, green: 221 / 255, blue: 231 / 255)
            .edgesIgnoringSafeArea(.all)

            VStack {
                Header()
                
                Spacer()
                
                ScrollView(.horizontal, content: {
                    Bg().overlay( Buttons())
                }).frame(height: 400)
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
