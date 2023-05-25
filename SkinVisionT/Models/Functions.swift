//
//  Functions.swift
//  SkinVisionT
//
//  Created by Francesco Bernaudo on 15/11/22.
//

import Foundation
import SwiftUI
import CoreML
import Vision


    



func nevusAnalyzer(image: UIImage)->String {
    
    let results = [0,1,2]
    var result = 0
    let cutValue = 0.7
    do{
        let config = MLModelConfiguration()
        let model =  try NevusAnalyzer(configuration: config)
        
        let resizedImage = image.resizeImageTo(size: CGSize(width: 299, height: 299))
        let buffer = resizedImage?.convertToBuffer()
        
        let prediction = try model.prediction(image: buffer!)
        
        if prediction.classLabelProbs["Nevus"]! > cutValue{
            result = results[0]
        }
        else if prediction.classLabelProbs["Melanhoma"]! > cutValue{
            result = results[1]
        }
        else {
            result = results[2]
        }
        
        
        
        
        
        
        
    }
    catch let error{
        print("Error: \(error.localizedDescription)")
        //alertTitle = "Error"
       // alertMessage = "Sorry, there was a problem analizyng your nevus."
    }
    if result == 0 {
       return "Benign"
    }
    if result == 1 {
        return "Malign"
    }
    else {
        return "This is not a nevus!"
    }
    
}




