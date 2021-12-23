//
//  ViewControllerDetail.swift
//  LandmarkBookClssTV
//
//  Created by ece on 22.12.2021.
//

import UIKit

class ViewControllerDetail: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelBaslik: UILabel!
    @IBOutlet weak var labelAciklama: UILabel!
    var selectedsrn : srnInfo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        labelBaslik.text = selectedsrn?.srnName
        labelAciklama.text = selectedsrn?.srnDetail
        imageView.image = selectedsrn?.srnImage
    }
    


}
