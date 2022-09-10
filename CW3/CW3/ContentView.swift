//
//  ContentView.swift
//  CW3
//
//  Created by Macbook Air on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var grade = ""
    @State var result = ""
    
    var body: some View {
        ZStack {
            Image ("blue")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        VStack
        {
            Text("حاسبة الدرجات")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .frame(width:300, height: 80)
                .background(Color.white.opacity(0.3))
                .cornerRadius(20)
            Spacer()
            
            Image("calc")
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .frame(width: 250, height: 250)
            Spacer()
            TextField("ادخل درجتك", text: $grade)
                .font(.largeTitle)
                .foregroundColor(.black)
                .frame(width:400, height: 80)
                .background(.white)
                .cornerRadius(10)
                .multilineTextAlignment(.center)
    //        Spacer()
            Text("احسب درجتي")
                .font(.headline)
                .frame(width: 140, height: 70)
                .background(.orange.opacity(0.7))
                .clipShape(Capsule())
                .padding()
                .onTapGesture {
                    let g = Int(grade) ?? 0
                    if g >= 90 {
                      result = "امتياز"
                    }
                    else if g >= 80 {
                      result = "جيد جيدا"
                    }
                    else if g >= 70 {
                     result = "جيد"
                    }
                    else if g >= 60 {
                    result = "مقبول"
                    }
                    else {
                    result = "راسب"
                    }
                    
                }
            Text("لقد حصلت على درجة")
                .font(.largeTitle)
                .padding()
            Text(result)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }
        
        }
    }
        
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

