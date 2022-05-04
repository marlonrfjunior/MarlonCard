//
//  InfoView.swift
//  MarlonCard
//
//  Created by Marlon Junior on 01/05/22.
//

import SwiftUI

struct InfoView: View {

    let text: String
    let imageName: String
    
    var body: some View {
        Rectangle()
            .fill(Color.white)
            .frame( height: 50)
            .cornerRadius(25)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(Color(red: 0.16, green: 0.50, blue: 0.80))
                    Text(text)
                        .foregroundColor(Color(red: 0.16, green: 0.50, blue: 0.80))
                        .bold()
                        .font(.system(size: 18))
                }
            ).padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+55 (34) 98412 - 7589", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
