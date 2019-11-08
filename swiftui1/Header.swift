//
//  header.swift
//  swiftui1
//
//  Created by brigitta forrai on 2019. 11. 08..
//  Copyright © 2019. brigitta forrai. All rights reserved.
//

import SwiftUI

struct Header: View {
    var body: some View {
        Text("Hello")
        .font(.largeTitle)
        .fontWeight(.bold)
        .foregroundColor(Color.white)
        .padding(.all)
    }
}

struct header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
