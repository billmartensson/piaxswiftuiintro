//
//  Prettymenu.swift
//  piaxswiftuiintro
//
//  Created by Bill Martensson on 2021-11-01.
//

import SwiftUI

struct Prettymenu: View {
    
    @State var menutitle = "ABC"
    
    var body: some View {
        Text(menutitle)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .frame(width: 100.0, height: 100.0)
            .background(.red)
    }
}

struct Prettymenu_Previews: PreviewProvider {
    static var previews: some View {
        
        Prettymenu()
            .previewLayout(.sizeThatFits)
    }
}
