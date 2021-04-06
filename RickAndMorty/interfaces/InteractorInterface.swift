//
//  InteractorInterface.swift
//  RickAndMorty
//
//  Created by Patrick VONGPRASEUTH on 03/04/2021.
//

import Foundation

protocol InteractorInterface: class {
    var services : APIServicesInterfaces! { get }
    init(services: APIServicesInterfaces)
}
