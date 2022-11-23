//
//  UVView.swift
//  SkinVisionT
//
//  Created by Francesco Bernaudo on 16/11/22.
//

import SwiftUI

struct UVView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 100){
            VStack(){
                Image(systemName: "sun.max")
                    .scaleEffect(4)
                    .frame(width: 100, height: 100)
                Text("Low")
                    .font(.title.bold())
            }
            VStack(spacing: 10){
                Text("Advices")
                    .font(.title3.bold())
                Text("Please wear your sunglasses if the sun reflects on snow and keep a sun lotion with a low SPF to protect your self all the year, specially if you have a light skin.")
            }
            VStack(spacing: 5){
                Text("Last result")
                    .font(.callout.bold())
                Text("22 non 2022, 09:41 AM, Naples")
                    .font(.callout)
                Text("Source")
                    .font(.callout.bold())
                Text("Temis / KNMI")
                    .font(.callout)
            }
        }.padding()}
}

struct UVView_Previews: PreviewProvider {
    static var previews: some View {
        UVView()
    }
}
