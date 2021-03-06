//
//  CharacterDetailPresenter.swift
//  RickAndMorty
//
//  Created by Patrick VONGPRASEUTH on 04/04/2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation
import RxSwift
import RxCocoa

final class CharacterDetailPresenter {

    // MARK: - Private properties -
    var character : BehaviorRelay<Character> = BehaviorRelay(value: Character())
    var episodes : BehaviorRelay<[Episode]> = BehaviorRelay(value: [Episode]())
    private var disposeBag = DisposeBag()

    private unowned let view: CharacterDetailViewInterface
    private let interactor: CharacterDetailInteractorInterface
    private let wireframe: CharacterDetailWireframeInterface

    // MARK: - Lifecycle -

    init(character : Character, view: CharacterDetailViewInterface, interactor: CharacterDetailInteractorInterface, wireframe: CharacterDetailWireframeInterface) {
        self.view = view
        self.interactor = interactor
        self.wireframe = wireframe
        self.character.accept(character)
    }
}

// MARK: - Extensions -

extension CharacterDetailPresenter: CharacterDetailPresenterInterface {
    
    func fillEpisodes(){
        character.value.episode.forEach({ (url) in
            interactor.fetchEpisode(url: url).drive(onNext: { (episode) in
                self.episodes.append(episode)
            }).disposed(by: disposeBag)
        })
    }
    
    func gotoEpisodeDetail(index: Int) {
        wireframe.pushEpisodeDetail(episode: episodes.value[index])
    }
}
