//
//  TabViews.swift
//  ShchelochowDS_HW3.6
//
//  Created by Apple on 12.04.2021.
//

import SwiftUI

struct TabViews: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "rosette")
                    Text("ContentView")
                }
            
            ShapesView()
                .tabItem {
                    Image(systemName: "pencil.and.outline")
                    Text("Shapes View")
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}

