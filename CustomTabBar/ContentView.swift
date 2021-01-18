//
//  ContentView.swift
//  CustomTabBar
//
//  Created by Denis Volkov on 18.01.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selected = 0
    var body: some View {
        VStack {
            Spacer()
            
            ZStack {
                
                HStack {
                    Button(action: {
                        self.selected = 0
                    }) {
                        Image(systemName: "house")
                            .font(.largeTitle)
                    }.foregroundColor(self.selected == 0 ? .black : .gray)
                    Spacer(minLength: 12)
                    
                    Button(action: {
                        self.selected = 1
                    }) {
                        Image (systemName: "magnifyingglass")
                            .font(.largeTitle)
                    }.foregroundColor(self.selected == 1 ? .black : .gray)
                    Spacer().frame(width: 120)
                    
                    Button(action: {
                        self.selected = 2
                    }) {
                        Image(systemName: "person")
                            .font(.largeTitle)
                    }.foregroundColor(self.selected == 2 ? .black : .gray)
                    Spacer(minLength: 12)
                    
                    Button(action: {
                        self.selected = 3
                    }) {
                        Image(systemName: "menubar.dock.rectangle")
                            .font(.largeTitle)
                    }.foregroundColor(self.selected == 3 ? .black : .gray)

                    
                }
                .padding()
                .padding(.horizontal, 22)
                .background(Color.green)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
