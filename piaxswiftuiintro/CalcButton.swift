//
//  CalcButton.swift
//  piaxswiftuiintro
//
//  Created by Bill Martensson on 2021-11-01.
//

import SwiftUI

struct CalcButton: View {
    
    @State var calcbuttontitle = "+"
    
    var body: some View {
        Text(calcbuttontitle)
            .foregroundColor(Color.white)
            .frame(width: 50.0, height: 50.0)
            .background(.gray)
            .cornerRadius(/*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
    }
}

struct CalcButton_Previews: PreviewProvider {
    static var previews: some View {
        CalcButton()
            .previewLayout(.sizeThatFits)
    }
}
