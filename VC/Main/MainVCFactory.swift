//
//  MainVCFactory.swift
//  RxSwiftExample
//
//  Created by Yessen Yermukhanbet on 8/13/21.
//  Copyright © 2021 Yessen Yermukhanbet. All rights reserved.
//

import Foundation

struct MainVCFactory{
    static  func make() -> MainViewController{
        let model = MainModel()
        let viewModel = MainViewModel(model: model)
        let vc = MainViewController(viewModel: viewModel)
        return vc
    }
}
