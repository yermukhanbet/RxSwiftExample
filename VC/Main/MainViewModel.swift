//
//  MainViewModel.swift
//  RxSwiftExample
//
//  Created by Yessen Yermukhanbet on 8/13/21.
//  Copyright © 2021 Yessen Yermukhanbet. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class MainViewModel{
    var items = PublishSubject<[Product]>()
    private let model: MainModel
    init(model: MainModel){
        self.model = model
    }
    public func fetchData(){
        let products: [Product] = [
            Product(name: "ant", image: IconsName.ant!),
            Product(name: "tortoise", image: IconsName.tortoise!),
            Product(name: "rabbit", image: IconsName.rabbit!),
            Product(name: "headphones", image: IconsName.headphones!)
        ]
        items.onNext(products)
        items.onCompleted()
    }
}
