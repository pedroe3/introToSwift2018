//
//  ColorManager.swift
//  Homework5_PR
//
//  Created by Pedro Rivera on 4/15/18.
//  Copyright © 2018 Pedro Rivera. All rights reserved.
//

import UIKit

struct ColorManager {
    
    static let maxRGBValue: Int32 = 255
    
    static let maxRGBFloatValue: CGFloat = CGFloat(maxRGBValue)
    
    static var randomRGBValue: CGFloat {
        get {
            return CGFloat(arc4random_uniform(UInt32(maxRGBValue)))
        }
    }
   
    
    
    static func  generateColors(numberOfColors: Int, colorRequest: Int)->[ColorViewModel] {
        
        var returnColors = [ColorViewModel]()
        var color: UIColor
        
        for _ in 1...numberOfColors {
            
            switch colorRequest {
                
            case 0:
                 color = UIColor(red: CGFloat(Float(randomRGBValue)/Float(maxRGBValue)), green: CGFloat( 0.0/Float(maxRGBValue)), blue: CGFloat( 0.0/Float(maxRGBValue)), alpha: 1)
                break
            case 1:
                 color = UIColor(red: CGFloat( 0.0/Float(maxRGBValue)), green: CGFloat( 0.0/Float(maxRGBValue)), blue: CGFloat(Float(randomRGBValue)/Float(maxRGBValue)), alpha: 1)
                break
            case 2:
                 color = UIColor(red: CGFloat(Float(randomRGBValue)/Float(maxRGBValue)), green: CGFloat(Float(randomRGBValue)/Float(maxRGBValue)), blue: CGFloat(Float(randomRGBValue)/Float(maxRGBValue)), alpha: 1)
                break
            default:
                   color = UIColor(red: CGFloat(Float(randomRGBValue)/Float(maxRGBValue)), green: CGFloat(Float(randomRGBValue)/Float(maxRGBValue)), blue: CGFloat(Float(randomRGBValue)/Float(maxRGBValue)), alpha: 1)
            }
       
      
            let components = color.cgColor.components
        
            let colorName: String = String(format: "R: %.0f, G: %.0f, B: %.0f, A: %.0f",Float(components![0] * 255.0),Float(components![1] * 255.0), Float(components![2] * 255.0), Float(components![3]) )
      
            returnColors.append(ColorViewModel(name: colorName, color: color, isSelected: false))
        }
   
       // redColors.sort( by: {  $0.color > $1.color } )
    
     
        return returnColors
    }
}
