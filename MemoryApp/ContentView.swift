//
//  ContentView.swift
//  MemoryApp
//
//  Created by Burhan Faquiri on 2023-09-06.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        HStack{
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
        }
    }
}

struct CardView : View{
    var isFaceUp: Bool = false
    
    var body: some View{
        ZStack {
            if isFaceUp{
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 10)
                Text("🏀")
            }
            else{
                RoundedRectangle(cornerRadius: 12)
            }
        }
        .padding()
        .foregroundColor(.red)
        .frame(height: 250)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
