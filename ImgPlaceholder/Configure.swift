//
//  Configure.swift
//  ImgPlaceholder
//
//  Created by Shyam Kumar on 9/15/20.
//  Copyright © 2020 Shyam Kumar. All rights reserved.
//

import Foundation
import UIKit


struct Configure {
    
    
    static func gradColor(a: String, b: String, imageView: UIImageView)  {
           
           var colorCombo1 = [Dictionary<String,Any>]()
           var colorCombo2 = [Dictionary<String,Any>]()
           
           if !a.isEmpty {
               
                  colorCombo1 =  [["letter":"A","color":"#EE6A50"],["letter":"B","color":"#FFFF7E"],["letter":"C","color":"#00B2EE"],["letter":"D","color":"#CCFFCC"],["letter":"E","color":"#FFD39B"],["letter":"F","color":"#9B30FF"],["letter":"G","color":"#D1EEEE"],["letter":"H","color":"#EED5D"],["letter":"I","color":"#A9C9A4"],["letter":"J","color":"#EE6A50"],["letter":"K","color":"#A9A9A9"],["letter":"L","color":"#8F8FBC"],["letter":"M","color":"#7FFFD4"],["letter":"N","color":"#A4D3EE"],["letter":"O","color":"#9F5F9F"],["letter":"P","color":"#60AFFE"],["letter":"Q","color":"#EAEAAE"],["letter":"R","color":"#C5E3BF"],["letter":"S","color":"#ECC8EC"],["letter":"T","color":"#B9D3EE"],["letter":"U","color":"#EEB4B4"],["letter":"V","color":"#EEE685"],["letter":"W","color":"#9CBA7F"],["letter":"X","color":"#007FFF"],["letter":"Y","color":"#EE6A50"],["letter":"Z","color":"#000080"]]
               
                colorCombo1 = colorCombo1.filter({
                    ($0["letter"] as! String).contains(a.uppercased())
               })
           }
           
           if !b.isEmpty {
                 colorCombo2 = [["letter":"A","color":"#63D1F4"],["letter":"B","color":"#FFFFCC"],["letter":"C","color":"#00EE76"],["letter":"D","color":"#FFFAF0"],["letter":"E","color":"#0EBFE9"],["letter":"F","color":"#FFE4E1"],["letter":"G","color":"#20B2AA"],["letter":"H","color":"#FFC469"],["letter":"I","color":"#28AE7B"],["letter":"J","color":"#FF00FF"],["letter":"K","color":"#FF0000"],["letter":"L","color":"#FCE6C9"],["letter":"M","color":"#00C5CD"],["letter":"N","color":"#F7F7F7"],["letter":"O","color":"#F0FFFF"],["letter":"P","color":"#ECC8EC"],["letter":"Q","color":"#687C97"],["letter":"R","color":"#EEEE00"],["letter":"S","color":"#D1E231"],["letter":"T","color":"#FCD116"],["letter":"U","color":"#D8D8BF"],["letter":"V","color":"#8FBC8F"],["letter":"W","color":"#DE85B1"],["letter":"X","color":"#F6C9CC"],["letter":"Y","color":"#F3E88E"],["letter":"Z","color":"#67E6EC"]]
           
           colorCombo2 = colorCombo2.filter({
            ($0["letter"] as! String).contains(b.uppercased())
             })
        }
           
           if let C1 :[String : String] = colorCombo1[0] as? [String : String], let colorA = C1["color"]{
               if let C2: [String : String] = colorCombo2[0] as? [String : String], let colorB = C2["color"] {
                   let gradLayer: CAGradientLayer = CAGradientLayer()
                           gradLayer.frame.size = imageView.frame.size
                   gradLayer.colors = [UIColor(hexString: colorA).cgColor, UIColor(hexString: colorB).cgColor]
//                  gradLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
//                  gradLayer.endPoint = CGPoint(x: 1.0, y: 0.5) left to right
                          imageView.layer.addSublayer(gradLayer)
                
            }
            
      }
        
}
    
    static func plainBg(str: String, imageView: UIImageView) {
        
           var colors = [Dictionary<String, Any>] ()
                   
                   if str.count > 1 {
                       colors = [["letter":"A","color":"#ADEAEA"],["letter":"B","color":"#FFFF7E"],["letter":"C","color":"#00B2EE"],["letter":"D","color":"#CCFFCC"],["letter":"E","color":"#FFD39B"],["letter":"F","color":"#9B30FF"],["letter":"G","color":"#D1EEEE"],["letter":"H","color":"#EED5D"],["letter":"I","color":"#A9C9A4"],["letter":"J","color":"#F6CCDA"],["letter":"K","color":"#A9A9A9"],["letter":"L","color":"#8F8FBC"],["letter":"M","color":"#7FFFD4"],["letter":"N","color":"#A4D3EE"],["letter":"O","color":"#9F5F9F"],["letter":"P","color":"#60AFFE"],["letter":"Q","color":"#EAEAAE"],["letter":"R","color":"#C5E3BF"],["letter":"S","color":"#ECC8EC"],["letter":"T","color":"#B9D3EE"],["letter":"U","color":"#EEB4B4"],["letter":"V","color":"#EEE685"],["letter":"W","color":"#9CBA7F"],["letter":"X","color":"#007FFF"],["letter":"Y","color":"#EE6A50"],["letter":"Z","color":"#000080"]]
                   } else {
                        colors = [["letter":"A","color":"#00C5CD"],["letter":"B","color":"#FFFFCC"],["letter":"C","color":"#00EE76"],["letter":"D","color":"#FFFAF0"],["letter":"E","color":"#0EBFE9"],["letter":"F","color":"#FFE4E1"],["letter":"G","color":"#20B2AA"],["letter":"H","color":"#FFC469"],["letter":"I","color":"#28AE7B"],["letter":"J","color":"#FF00FF"],["letter":"K","color":"#FF0000"],["letter":"L","color":"#FCE6C9"],["letter":"M","color":"#63D1F4"],["letter":"N","color":"#F7F7F7"],["letter":"O","color":"#F0FFFF"],["letter":"P","color":"#ECC8EC"],["letter":"Q","color":"#687C97"],["letter":"R","color":"#EEEE00"],["letter":"S","color":"#D1E231"],["letter":"T","color":"#FCD116"],["letter":"U","color":"#D8D8BF"],["letter":"V","color":"#8FBC8F"],["letter":"W","color":"#DE85B1"],["letter":"X","color":"#F6C9CC"],["letter":"Y","color":"#F3E88E"],["letter":"Z","color":"#67E6EC"]]
                   }
                   colors = colors.filter({
        
                       ($0["letter"] as! String).contains(str.first!)
        
                   })
                   
                   if colors.count > 0 {
      
        
      if let info : [String : String] = colors[0] as? [String : String] , let colorHex = info["color"] {
                    
                 imageView.backgroundColor = UIColor(hexString: colorHex)
           
      }
    }
  }
    
    static func nameLbl(str: String, imageView: UIImageView) {
        
        let lbl = UILabel()
         lbl.translatesAutoresizingMaskIntoConstraints = false
         lbl.textColor = .darkGray
         lbl.font = UIFont(name: "HelveticaNeue-Bold", size: 16)
         imageView.addSubview(lbl)
         lbl.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
         lbl.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
         lbl.text = str.uppercased()
    }
}


extension UIColor {
    
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
           var int = UInt64()
           Scanner(string: hexString).scanHexInt64(&int)
           let a, r, g, b: UInt64
           switch hex.count {
           case 3: // RGB (12-bit)
               (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
           case 6: // RGB (24-bit)
               (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
           case 8: // ARGB (32-bit)
               (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
           default:
               (a, r, g, b) = (255, 0, 0, 0)
           }
           self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
       }
 }
