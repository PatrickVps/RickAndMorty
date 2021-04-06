//
//  UINavigationController.swift
//  RickAndMorty
//
//  Created by Patrick VONGPRASEUTH on 05/04/2021.
//

import Foundation
import UIKit

extension UINavigationController {
    
    func pushWireframe<View>(_ wireframe: BaseWireframe<View>, animated: Bool = true) {
        self.pushViewController(wireframe.viewController, animated: animated)
    }

    func setRootWireframe<View>(_ wireframe: BaseWireframe<View>, animated: Bool = true) {
        self.setViewControllers([wireframe.viewController], animated: animated)
    }
    
}
