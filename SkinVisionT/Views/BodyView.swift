//
//  FrontBodyView.swift
//  SkinVisionT
//
//  Created by Francesco Bernaudo on 15/11/22.
//

import SwiftUI

struct BodyView: View {
    var body: some View {
        Image(systemName: "figure.arms.open")
            .scaleEffect(25)
    }
}

struct FrontBodyView_Previews: PreviewProvider {
    static var previews: some View {
        BodyView()
    }
}
