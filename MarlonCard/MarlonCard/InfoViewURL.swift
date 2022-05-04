//
//  InfoView.swift
//  MarlonCard
//
//  Created by Marlon Junior on 01/05/22.
//

import SwiftUI

struct InfoViewURL: View {

    let text: String
    let imageName: String
    let urlString : String
    
    var body: some View {
        Button {
            openURL(urlString)
        } label: {
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
                    ).padding(.horizontal)
        }

    }
}
func openURL( _ urlString: String){
    if let url = URL(string: urlString) {
        UIApplication.shared.open(url)
    }
    else{
        print("URL não acessível.")
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoViewURL(text: "+55 (34) 98412 - 7589", imageName: "phone.fill",urlString:"+55(34)98412-7589")
            .previewLayout(.sizeThatFits)
    }
}
