//
//  ContentView.swift
//  PersonCard
//
//  Created by Giorgi Samkharadze on 11.10.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.97, green: 0.95, blue: 0.89)
            .ignoresSafeArea()
            VStack {
                Image("Giorgi").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white,lineWidth: 5)
                    )
                Text("Giorgi Samkharadze")
                    .padding()
                    .font(.bold(Font.custom("SourceSansPro-Regular", size: 40))())
                .foregroundColor(.gray)
                Text("iOS Developer")
                    .foregroundColor(.black)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: " + 995 599 06 40 03 ", imageName: "phone.fill")
                InfoView(text: "gsamkharadze51@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

