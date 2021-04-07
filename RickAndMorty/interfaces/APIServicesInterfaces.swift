//
//  APIServicesInterfaces.swift
//  RickAndMorty
//
//  Created by Patrick VONGPRASEUTH on 03/04/2021.
//

import Foundation
import RxSwift
import RxCocoa

protocol APIServicesInterfaces {
    static func getInstance() -> ApiService
    
    func fetchEpisodes() -> Driver<[Episode]>
    func fetchCharacter(_ url : String) -> Driver<Character>
    func fetchEpisode(_ url : String) -> Driver<Episode>
    func fetchCharacters() -> Driver<[Character]>
}
