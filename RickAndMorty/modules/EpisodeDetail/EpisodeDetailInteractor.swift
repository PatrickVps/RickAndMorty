//
//  EpisodeDetailInteractor.swift
//  RickAndMorty
//
//  Created by Patrick VONGPRASEUTH on 03/04/2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation
import RxSwift
import RxCocoa

final class EpisodeDetailInteractor {
    var services : APIServicesInterfaces!
}

// MARK: - Extensions -

extension EpisodeDetailInteractor: EpisodeDetailInteractorInterface {

    convenience init(services: APIServicesInterfaces) {
        self.init()
        self.services = services
    }
    
    func fetchCharacter(_ url : String) -> Driver<Character>{
        return services.fetchCharacter(url)
    }
    
}