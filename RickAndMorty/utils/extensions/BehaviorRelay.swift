//
//  BehaviorRelay.swift
//  RickAndMorty
//
//  Created by Patrick VONGPRASEUTH on 04/04/2021.
//

import Foundation
import RxCocoa


extension BehaviorRelay where Element: RangeReplaceableCollection {
    func append(_ subElement: Element.Element) {
        var newValue = value
        newValue.append(subElement)
        accept(newValue)
    }
}
