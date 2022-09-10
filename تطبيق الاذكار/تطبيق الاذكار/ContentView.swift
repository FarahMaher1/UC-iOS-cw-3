//
//  ContentView.swift
//  تطبيق الاذكار
//
//  Created by Macbook Air on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter = 0
    @State var counter1 = 0
    @State var counter2 = 0
    
    var body: some View {
        
        VStack{
            
            HStack{
                Text("استغفر الله العظيم")
                    .font(.largeTitle)
                    .shadow(color:.pink, radius: 20 , x: 10, y: 10)
            ExtractedView(counter: $counter)
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }
            .padding()
            HStack{
                Text("سبحان الله وبحمده")
                    .font(.largeTitle)
                    .shadow(color:.pink, radius: 20 , x: 10, y: 10)
            ExtractedView(counter: $counter1)
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }
            .padding()
            HStack{
                Text("سبحان الله العظيم")
                    .font(.largeTitle)
                    .shadow(color:.pink, radius: 20 , x: 10, y: 10)
            ExtractedView(counter: $counter2)
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }
            .padding()
            
            
        }
        
        
        
        
      
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    @Binding var counter: Int
//    @Binding var counter1: Int
//    @Binding var counter2: Int
    
    var body: some View {
        ZStack{
            Circle()
                .fill(.blue)
                .frame(width: 100, height: 100)
            Text("\(counter)")
                .onTapGesture {
                    counter = counter + 1
                }
            
        }
    }
}
