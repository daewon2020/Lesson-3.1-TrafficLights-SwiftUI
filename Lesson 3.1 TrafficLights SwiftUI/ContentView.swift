//
//  ContentView.swift
//  Lesson 3.1 TrafficLights SwiftUI
//
//  Created by Константин Андреев on 27.04.2022.
//

import SwiftUI

struct ContentView: View {
    @State var redColorOpacity = 0.3
    @State var yellowColorOpacity = 0.3
    @State var greenColorOpacity = 0.3
    
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack {
                ColorCircleView(color: .red).opacity(redColorOpacity)
                ColorCircleView(color: .yellow).opacity(yellowColorOpacity)
                ColorCircleView(color: .green).opacity(greenColorOpacity)
                Spacer()
                Button {
                    if redColorOpacity == 0.3 && yellowColorOpacity == 0.3 && greenColorOpacity == 0.3 {
                        redColorOpacity = 1
                    } else if redColorOpacity == 1 {
                        redColorOpacity = 0.3
                        yellowColorOpacity = 1
                    } else if yellowColorOpacity == 1 {
                        yellowColorOpacity = 0.3
                        greenColorOpacity = 1
                    } else {
                        greenColorOpacity = 0.3
                        redColorOpacity = 1
                    }
                } label: {
                    Text("NEXT")
                }.font(.title)
                    .frame(width: 200, height: 60)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color(.white), lineWidth: 5)
                    )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
