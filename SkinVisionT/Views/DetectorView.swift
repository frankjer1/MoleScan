//
//  BackBodyView.swift
//  SkinVisionT
//
//  Created by Francesco Bernaudo on 15/11/22.
//

import SwiftUI

struct DetectorView: View {
    @State var sourceType: UIImagePickerController.SourceType
    @State var uiImage: UIImage?
    @State private var isPresenting: Bool = false
    @State private var animationAmount = 1.0
    @State var ResultIsActive: Bool = false
    @State var WhichButtonText: Bool = true
    var buttonText: String {
        if WhichButtonText {
            return "Scan"}
        else {
            return "See the results"
        }
    }
    
    
    
    
    
    
    //let model = nevusAnalyzer()
    var body: some View {
        VStack(spacing: 50){
            Spacer()
            if uiImage != nil {
                VStack(spacing:50){
                    Spacer()
                    Image(uiImage: uiImage!)
                        .resizable()
                        .frame(width: 299, height: 299, alignment: .topLeading)
                        .border(.black)
                        .clipped()
                        .shadow(radius: 5)
                    NavigationLink(destination: ResultView(nevus: uiImage!), label: {
                                Text("Tap to see the results")
                                    .font(.title2.bold())
                        })
                    .buttonStyle(.borderedProminent)
                    .shadow(radius: 3)
                    Button(role: .cancel, action: {uiImage = nil}, label: {
                        Text("Cancel")
                            .font(.title3)
                    })
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.automatic)
                    
                }
                Spacer()
                
            }
            else {
                Image(systemName: "stethoscope")
                    .imageScale(.large)
                    .scaleEffect(3)
                Text("Press the button\nto scan your nevus")
                    .font(.title.bold())
                    .multilineTextAlignment(.center)
                Button(action: {
                    self.sourceType = .camera
                    self.isPresenting.toggle()
                    self.ResultIsActive.toggle()
                }, label: {
                    ZStack{
                        Text("Scan")
                            .font(.title.bold())
                            .foregroundColor(.white)
                            .scaledToFit()
                    }
                }
                )
                .padding(50)
                .background(.blue)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(.blue)
                        .scaleEffect(animationAmount)
                        .opacity(2-animationAmount)
                        .animation(.easeIn(duration: 2)
                            .repeatForever(autoreverses: false), value: animationAmount)
                )
                .onAppear { animationAmount = 2}
                .shadow(radius: 5)
                .frame(width: 300, height: 300)
            }
            
            
            
            
            
            
        }
        .sheet(isPresented: $isPresenting) {
            ImagePicker(uiImage: self.$uiImage, isPresenting: self.$isPresenting)
            
        }
    }
}




struct BackBodyView_Previews: PreviewProvider {
    static var previews: some View {
        DetectorView(sourceType: .camera)
    }
}
