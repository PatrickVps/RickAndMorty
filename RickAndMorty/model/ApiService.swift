//
//  ApiService.swift
//  RickAndMorty
//
//  Created by Patrick VONGPRASEUTH on 03/04/2021.
//

import Foundation
import Alamofire
import RxSwift
import RxCocoa

class ApiService: BaseService, APIServicesInterfaces {
    
    private static var instance : ApiService? = nil
    
    static func getInstance() -> ApiService{
        if(self.instance == nil){
            self.instance = ApiService()
        }
        return self.instance!
    }
    
    func fetchEpisodes() -> Driver<[Episode]> {
        let components = URLComponents(string: Constants.API_EPISODES_URL)!
        let urlRequest = URLRequest(url: components.url!)
        let result:Observable<EpisodeContainer> = remoteStream(urlRequest)
            .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
            .single()
        
        return result.map({ $0.results })
        .asDriver(onErrorJustReturn: [Episode]())
    }
    
    
    func fetchCharacter(_ url: String) -> Driver<Character> {
        let components = URLComponents(string : url)!
        let urlRequest = URLRequest(url : components.url!)
        let result : Driver<Character> = remoteStream(urlRequest)
            .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
            .single()
            .asDriver(onErrorJustReturn: Character())
        return result
    }
    
    func fetchEpisode(_ url: String) -> Driver<Episode> {
        let components = URLComponents(string : url)!
        let urlRequest = URLRequest(url : components.url!)
        let result : Driver<Episode> = remoteStream(urlRequest)
            .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
            .single()
            .asDriver(onErrorJustReturn: Episode())
        return result
    }
    
    func fetchCharacters() -> Driver<[Character]> {
        let components = URLComponents(string: Constants.API_CHARACTERS_URL)!
        let urlRequest = URLRequest(url: components.url!)
        let result:Observable<CharacterContainer> = remoteStream(urlRequest)
            .observe(on: ConcurrentDispatchQueueScheduler(qos: .background))
            .single()
        
        return result.map({ $0.results })
        .asDriver(onErrorJustReturn: [Character]())
    }
    
}
