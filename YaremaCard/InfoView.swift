//
//  InfoView.swift
//  YaremaCard
//
//  Created by Yarema Zaiachuk on 11.12.2019.
//  Copyright © 2019 Yarema Zaiachuk. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageView: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.black)
            .frame(height: 50)
            .overlay(HStack {
                    Image(systemName: imageView)
                        .foregroundColor(.green)
                    Text(text)
            })
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageView: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
