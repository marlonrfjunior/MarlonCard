//
//  ContentView.swift
//  MarlonCard
//
//  Created by Marlon Junior on 29/04/22.
//

import SwiftUI
import MessageUI

struct ContentView: View{
    let number: String = "+55(34)98412-7589"
    let email: String = "marlonrfjunior@outlook.com"
    var body: some View {
        ZStack{
            Color(red: 0.16, green: 0.50, blue: 0.80)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Marlon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(Color.white, lineWidth:5))
                
                Text("Marlon Junior")
                    .font(Font.custom("Merienda-Bold", size: 40))
                    .bold()
                .foregroundColor(.white)
                Text("Test Automation Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .bold()
                Divider()
                
                    .padding(.top)
                
               
                InfoViewURL(text: number, imageName: "phone.fill",urlString: "tel://\(number)")
                    .padding(.top)
                InfoViewURL(text: email, imageName: "envelope.fill", urlString: "mailto:marlonrfjunior@outlook.com")
                InfoViewURL(text:"LinkedIn", imageName: "link", urlString:"https://www.linkedin.com/in/marlonrfjunior/")
                InfoViewURL(text:"Github", imageName: "link", urlString: "https://github.com/marlonrfjunior")

                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
