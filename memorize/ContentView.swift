//
//  ContentView.swift
//  memorize
//
//  Created by Abdul Ahad on 18/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView()
            CardView()
            CardView()
            CardView(isFaceUp: false)
        }
        .foregroundColor(.indigo)
        .padding()
    }
}


struct CardView: View {
    @State var  isFaceUp: Bool = true
    var body: some View {
        ZStack {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            }
            else {
                base.fill()
            }
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}




#Preview {
    ContentView()
}

