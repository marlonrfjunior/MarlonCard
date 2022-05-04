//
//  ContentView.swift
//  MarlonCard
//
//  Created by Marlon Junior on 29/04/22.
//

import SwiftUI

struct ContentView: View {
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
                InfoView(text: "+55 (34) 98412-7589", imageName: "phone.fill")
                InfoView(text: "marlonrfjunior@outlook.com", imageName: "envelope.fill")
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
