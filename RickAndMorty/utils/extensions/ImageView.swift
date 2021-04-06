//
//  ImageView.swift
//  RickAndMorty
//
//  Created by Patrick VONGPRASEUTH on 05/04/2021.
//

import Foundation
import UIKit
import AlamofireImage

extension UIImageView{
    func setUrlImage(url : String){
        let url = URL(string: url)!
        self.af.setImage(withURL: url)
    }
}
