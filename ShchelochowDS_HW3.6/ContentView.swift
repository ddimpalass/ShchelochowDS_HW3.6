//
//  ContentView.swift
//  ShchelochowDS_HW3.6
//
//  Created by Apple on 12.04.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var showShape = false
    
    var body: some View {
        VStack {
            Button(action: { showShape.toggle() }) {
                HStack {
                    Text(showShape ? "Hide Shape" : "Show Shape")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(showShape ? 2 : 1)
                        .rotationEffect(.degrees(showShape ? 0 : 180))
                        .animation(.default)
                }
            }
            Spacer()
            
            MyShapeView(width: 250, height: 250, color: Color.random())
                .offset(y: showShape ? 0 : -UIScreen.main.bounds.height)
                .animation(Animation
                            .spring(response: 0.6,
                                    dampingFraction: 0.42,
                                    blendDuration: 0
                            )
                )
            Spacer()
        }
        .font(.headline)
        .padding()
    }
}

extension Color {
  static func random()->Color {
    let r = Double.random(in: 0 ... 1)
    let g = Double.random(in: 0 ... 1)
    let b = Double.random(in: 0 ... 1)
    return Color(red: r, green: g, blue: b)
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
