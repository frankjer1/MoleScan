//
//  BenignView.swift
//  SkinVisionT
//
//  Created by Francesco Bernaudo on 16/11/22.
//

import SwiftUI
import CoreML

struct ResultView: View {
    
    
    @State var nevus: UIImage?
    
    
    
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 5) {
                if nevus != nil {
                    Image(uiImage: nevus!)
                        .resizable()
                        .frame(width: 299, height: 299, alignment: .topLeading)
                        .border(.black)
                        .clipped()
                        .shadow(radius: 5)
                        .padding()
                    Text("The result is...")
                        .font(.title2)
                    if nevusAnalyzer(image: nevus!) == "Benign" {
                        Text(nevusAnalyzer(image: nevus!))
                            .fontWeight(.heavy)
                            .foregroundColor(.green)
                            .font(.title.bold())
                            .padding()
                        Text("It seems to be all OK. We remember you that this result doesn't replace a medical check. We also reccomends you to have a dermatological examination at least every year or, in case of doubts, as soon as possible.")
                            .multilineTextAlignment(.center)
                            .padding(30)
                    }
                    else if nevusAnalyzer(image: nevus!) == "Malign"
                    {
                        Text(nevusAnalyzer(image: nevus!))
                            .fontWeight(.heavy)
                            .foregroundColor(.red)
                            .font(.title.bold())
                            .padding()
                        Text("We suggest you to reserve a medical check. We remember you that this result doesn't replace a medical check. We also reccomends you to have a dermatological examination at least every year or, in case of doubts, as soon as possible.")
                            .multilineTextAlignment(.center)
                            .padding(30)
                    }
                    else {
                        Text(nevusAnalyzer(image: nevus!))
                            .fontWeight(.heavy)
                            .font(.title.bold())
                            .padding()
                        Text("We suggest you to retake the photo being sure to focus on the nevus.")
                            .multilineTextAlignment(.center)
                            .padding(30)
                    }
                }
                
                else {
                    Image(systemName: "photo.circle")
                        .scaleEffect(5)
                        .frame(width: 200, height: 200)
                        .scaledToFit()
                }
                
            }
        }
    }
}
        
        
        
        struct BenignView_Previews: PreviewProvider {
            static var previews: some View {
                ResultView()
            }
        }
