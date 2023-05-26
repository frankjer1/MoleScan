//
//  ChatView.swift
//  MoleScan
//
//  Created by Francesco Bernaudo on 16/11/22.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        //Not implemented yet
        Text("You will find your recommendation here when you need to do further checks")
            //.foregroundColor(.blue)
            .font(.title3.bold())
            .multilineTextAlignment(.center)
            .padding(50)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
