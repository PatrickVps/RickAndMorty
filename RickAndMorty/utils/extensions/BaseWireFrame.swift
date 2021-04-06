//
//  UINavigationController.swift
//  RickAndMorty
//
//  Created by Patrick VONGPRASEUTH on 03/04/2021.
//

import Foundation
import UIKit


protocol WireframeInterface: class {
}

class BaseWireframe<View> where View: UIViewController {

    unowned var viewController: View
    
    var navigationController: UINavigationController? {
        return viewController.navigationController
    }
    
    init(viewController: View) {
        self.viewController = viewController
    }

}

extension BaseWireframe: WireframeInterface {
    
}

