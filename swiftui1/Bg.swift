//
//  bg.swift
//  swiftui1
//
//  Created by brigitta forrai on 2019. 11. 07..
//  Copyright © 2019. brigitta forrai. All rights reserved.
//

import SwiftUI


struct Img: View {
    var body: some View {
        HStack(spacing: 0) {
            Image("bg")
            .resizable()
                .frame(height: 400.00, alignment: .leading)
        }
        
    }
}


struct Bg: View {
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 0) {
            Img()
            Img()
            Img()
        }
    }
}

struct bg_Previews: PreviewProvider {
    static var previews: some View {
        Bg()
    }
}
