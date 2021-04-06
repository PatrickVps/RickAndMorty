//
//  CharacterDetailInterfaces.swift
//  RickAndMorty
//
//  Created by Patrick VONGPRASEUTH on 04/04/2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit
import RxSwift
import RxCocoa

protocol CharacterDetailWireframeInterface: WireframeInterface {
    func pushEpisodeDetail(episode : Episode)
}

protocol CharacterDetailViewInterface: ViewInterface {
    func displayEpisodeDetail(index : Int)
}

protocol CharacterDetailPresenterInterface: PresenterInterface {
    var character: BehaviorRelay<Character> { get }
    var episodes: BehaviorRelay<[Episode]> { get }
    
    func fillEpisodes()
    func gotoEpisodeDetail(index: Int)
}

protocol CharacterDetailInteractorInterface: InteractorInterface {
    func fetchEpisode(url : String) -> Driver<Episode>
}