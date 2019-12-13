//
//  ContentView.swift
//  YaremaCard
//
//  Created by Yarema Zaiachuk on 11.12.2019.
//  Copyright © 2019 Yarema Zaiachuk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red:0.09, green:0.63, blue:0.52).edgesIgnoringSafeArea(.all)
            VStack {
                Image("yarema")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                )
                Text("Yarema Zaiachuk")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+38 067 842 0614", imageView: "phone.fill")
                InfoView(text: "jarema2505@gmail.com", imageView: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

