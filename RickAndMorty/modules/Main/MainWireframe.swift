//
//  MainWireframe.swift
//  RickAndMorty
//
//  Created by Patrick VONGPRASEUTH on 05/04/2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class MainWireframe: BaseWireframe<MainViewController> {

    // MARK: - Private properties -

    private let storyboard = UIStoryboard(name: "Main", bundle: nil)

    // MARK: - Module setup -

    init() {
        let moduleViewController = storyboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        super.init(viewController: moduleViewController)

        let presenter = MainPresenter(view: moduleViewController, wireframe: self)
        moduleViewController.presenter = presenter
    }

}

// MARK: - Extensions -

extension MainWireframe: MainWireframeInterface {
    func pushToSectionEpisodes(){
        navigationController?.pushWireframe(EpisodesWireframe())
    }
    
    func pushToSectionCharacters(){
        navigationController?.pushWireframe(CharactersWireframe())
    }
}
