//
//  BaseService.swift
//  RickAndMorty
//
//  Created by Patrick VONGPRASEUTH on 03/04/2021.
//

import Foundation

import RxCocoa
import RxSwift
import Alamofire


class BaseService {
    
    func remoteStream<T:Codable>(_ request: URLRequest) -> Observable<T> {
        return Observable<T>.create { (observer)->Disposable in
            let request = AF.request(
                request.url!,
                method: .get,
                encoding: JSONEncoding.default
                )
                .validate(statusCode: 200..<300)
                .validate(contentType: ["application/json"])
                .responseJSON { response in
                    switch response.result {
                    case .success(_) :
                        do {
                            let records: T = try JSONDecoder().decode(T.self, from: response.data!)
                            
                            observer.on(.next(records))
                            observer.on(.completed)
                            
                        } catch let error as NSError {
                            print(error)
                        }
                        break
                        case .failure(let error) :
                            print("Error while fetching remote: \(String(describing: error))")
                    }
            }
            return Disposables.create {
                request.cancel()
            }
        }
    } 
}
 
