//
//  ContentView.swift
//  SimpleCard-in-SwiftUI
//
//  Created by tommy on 06/03/2020.
//  Copyright © 2020 tommy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color.offWhite
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.offWhite)
                .frame(width: 300, height: 300)
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10) // bottom right shadow
                .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                    // top left shadow
        }
        .edgesIgnoringSafeArea(.all)
    .overlay(Text("Special card by Tommy")
    .font(.system(size: 25))
    .fontWeight(.bold)
    .foregroundColor(.black)
        )
    }
}

//MARK: - Special offWhite color
extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}

//MARK: - Content preview canvas
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
