//
//  srnInfo.swift
//  LandmarkBookClssTV
//
//  Created by ece on 22.12.2021.
//

import Foundation
import UIKit

public class srnInfo {
    
    var srnName = ""
    var srnImage = UIImage()
    var srnDetail = ""
    
    init(stringSrnName : String, stringSrnDetail : String, imageSrnImage : UIImage) {
        srnName = stringSrnName
        srnDetail = stringSrnDetail
        srnImage = imageSrnImage
    }
    
}
