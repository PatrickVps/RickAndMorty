//
//  CharactersInterfaces.swift
//  RickAndMorty
//
//  Created by Patrick VONGPRASEUTH on 05/04/2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit
import RxCocoa

protocol CharactersWireframeInterface: WireframeInterface {
    func pushToCharacterDetail(character : Character)
}

protocol CharactersViewInterface: ViewInterface {
    func displayCharacterDetail(index : Int)
}

protocol CharactersPresenterInterface: PresenterInterface {
    var characters : BehaviorRelay<[Character]> { get }
    
    func getCharacters()
    func goToDetail(index : Int)
}

protocol CharactersInteractorInterface: InteractorInterface {
    func fetchCharacters() -> Driver<[Character]>
}