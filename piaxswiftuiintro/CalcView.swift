//
//  CalcView.swift
//  piaxswiftuiintro
//
//  Created by Bill Martensson on 2021-11-01.
//

import SwiftUI

struct CalcView: View {
    
    @State var number1 = ""
    @State var number2 = ""
    
    @State var calcresult = "RESULTAT"
    
    @State var errormessage = ""
    
    var body: some View {
        VStack {
            Text("CALC")
            
            if(errormessage != "")
            {
                Text(errormessage)
                    .font(.title)
                    .foregroundColor(Color.white)
                    .padding(.all)
                    .background(.red)
            }
            
            
            
            
            TextField("Siffra", text: $number1)
                .padding(.horizontal)
            TextField("En till siffra", text: $number2)
                .padding(.horizontal)
            
            HStack {
                Button(action: {
                    docalc(calctype: "plus")
                }) {
                    CalcButton(calcbuttontitle:"+")
                }
                
                Button(action: {
                    docalc(calctype: "minus")
                }) {
                    CalcButton(calcbuttontitle: "-")
                }

                Button(action: {
                    docalc(calctype: "div")
                }) {
                    CalcButton(calcbuttontitle: "/")
                }
                
                Button(action: {
                    docalc(calctype: "mult")
                }) {
                    CalcButton(calcbuttontitle: "*")
                }

            }
            
            Text(calcresult)
                .font(.largeTitle)

            Spacer()
            
        }
    }
    
    func docalc(calctype : String)
    {
        var num1 = Int(number1)
        var num2 = Int(number2)
        
        if(num1 == nil || num2 == nil)
        {
            // Å nej, det är fel
            errormessage = "Inte en siffra"
        } else {
            // Gick bra
            errormessage = ""
            
            if(calctype == "plus")
            {
                var calc = num1!+num2!
                calcresult = String(calc)
            }
            if(calctype == "minus")
            {
                var calc = num1!-num2!
                calcresult = String(calc)
            }
            if(calctype == "div")
            {
                if(num2! == 0)
                {
                    errormessage = "DELA MED NOLL!!!"
                } else {
                    var calc = num1!/num2!
                    calcresult = String(calc)
                }
            }
            if(calctype == "mult")
            {
                var calc = num1!*num2!
                calcresult = String(calc)
            }

        }
    }
    
    
}

struct CalcView_Previews: PreviewProvider {
    static var previews: some View {
        CalcView()
    }
}
