//
//  ContentView.swift
//  MoleScan
//
//  Created by Francesco Bernaudo on 15/11/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            
                TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                    DetectorView(sourceType: .camera).tabItem { Image(systemName: "magnifyingglass")
                    Text("Detector") }.tag(1)
                    BodyView().tabItem { Image(systemName: "figure.arms.open")
                        Text("My body")
                    }.tag(2)
                    UVView().tabItem { Image(systemName: "sun.max")
                        Text("UV")
                    }.tag(3)
                    ChatView().tabItem { Image(systemName: "envelope")
                        Text("Inbox")
                    }.tag(4)
                }
            
            .padding()
            .navigationTitle("MoleScan")
            .toolbar{
                ToolbarItem(
                    placement: .automatic, content: {NavigationLink(destination: OptionsView(), label: {Image(systemName: "gear")})})
                
            }
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

