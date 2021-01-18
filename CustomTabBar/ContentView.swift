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
                    Spacer()
                    
                    Button(action: {
                        self.selected = 1
                    }) {
                        Image (systemName: "magnifyingglass")
                            .font(.largeTitle)
                    }.foregroundColor(self.selected == 1 ? .black : .gray)
                    Spacer()
                        .frame(width: 120)
                    
                    Button(action: {
                        self.selected = 2
                    }) {
                        Image(systemName: "person")
                            .font(.largeTitle)
                    }.foregroundColor(self.selected == 2 ? .black : .gray)
                    Spacer()
                    
                    Button(action: {
                        self.selected = 3
                    }) {
                        Image(systemName: "menubar.dock.rectangle")
                            .font(.largeTitle)
                    }.foregroundColor(self.selected == 3 ? .black : .gray)
                    
                    
                }
                .padding()
                .padding(.horizontal, 15)
                .background(CurvedShape())
                
                Button(action: {
                    //
                }) {
                    Image(systemName: "heart")
                        .font(.largeTitle)
                        .padding(15)
                } .background(Color.init(#colorLiteral(red: 1, green: 0.4269846069, blue: 0.617423971, alpha: 1)))
                .clipShape(Circle())
                .offset(y: -20)
                .shadow(radius: 5)
            }
            
        }.background(Color.init(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)).edgesIgnoringSafeArea(.top))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CurvedShape: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x:0, y:0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 55))
            
            path.addArc(center: CGPoint(x: UIScreen.main.bounds.width / 2, y: 55), radius: 40, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
            path.addLine(to: CGPoint(x: 0, y: 55))
        } .fill(Color.white)
        .rotationEffect(.init(degrees: 180))
    }
}
