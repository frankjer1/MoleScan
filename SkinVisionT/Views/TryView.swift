//
//  TryView.swift
//  SkinVisionT
//
//  Created by Francesco Bernaudo on 21/11/22.
//

import SwiftUI

struct TryView: View {
    var body: some View {
        VStack(spacing:50){
            Spacer()
                Image("prova")
                        .resizable()
                        .frame(width: 300, height: 400, alignment: .topLeading)
                        .border(.black)
                        .shadow(radius: 5)
                        .clipped()
            NavigationLink(destination: ResultView(), label: {
                        Text("Tap to see the results")
                            .font(.title2.bold())
                            .foregroundColor(Color.white)
                            .frame(width: 250, height: 40)
                            .padding()
                            .background(.blue)
    
                })
            Spacer()
        }
    }
}

struct TryView_Previews: PreviewProvider {
    static var previews: some View {
        TryView()
    }
}

