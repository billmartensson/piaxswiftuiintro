//
//  ContentView.swift
//  piaxswiftuiintro
//
//  Created by Bill Martensson on 2021-11-01.
//

import SwiftUI

struct ContentView: View {
    
    @State var fancymessage = "Heja hej!!!"
    
    @State var thecounter = 0
    
    @State var personname = ""
    
    var body: some View {
        VStack {
            Text(fancymessage)
                .padding()
            Text(String(thecounter))
                .font(.title)
                .foregroundColor(Color.white)
                .background(Color.gray)
            Button(action: {
                print("Klickat på knapp")
                print(personname)
                fancymessage = "Tjena!!"
                thecounter = thecounter + 1
                personname = ""
            }) {
                Text("Lets click!")
            }
            .padding(.vertical, 7.0)
            
            
            TextField("Name", text: $personname)
            
            
            
            HStack {
                Prettymenu(menutitle: "A")
                Prettymenu(menutitle: "B")
                Prettymenu(menutitle: "C")
            }
            
            Spacer()
            
            if(thecounter > 5)
            {
                Text("Här är text")
                    .font(.largeTitle)
                    .foregroundColor(Color.orange)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
