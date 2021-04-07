//
//  EpisodeDetailWireframe.swift
//  RickAndMorty
//
//  Created by Patrick VONGPRASEUTH on 03/04/2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class EpisodeDetailWireframe: BaseWireframe<EpisodeDetailViewController> {

    // MARK: - Private properties -

    private let storyboard = UIStoryboard(name: "EpisodeDetail", bundle: nil)

    // MARK: - Module setup -

    init(episode : Episode) {
        let moduleViewController = storyboard.instantiateViewController(withIdentifier: "EpisodeDetailViewController") as! EpisodeDetailViewController
        super.init(viewController: moduleViewController)

        let interactor = EpisodeDetailInteractor(services : ApiService.getInstance())
        let presenter = EpisodeDetailPresenter(episode : episode, view: moduleViewController, interactor: interactor, wireframe: self)
        moduleViewController.presenter = presenter
    }

}

// MARK: - Extensions -

extension EpisodeDetailWireframe: EpisodeDetailWireframeInterface {
    func pushCharacterDetail(character: Character) {
        navigationController?.pushWireframe(CharacterDetailWireframe(character: character))
    }
    
}
