//
//  MainViewController.swift
//  RxSwiftExample
//
//  Created by Yessen Yermukhanbet on 8/13/21.
//  Copyright © 2021 Yessen Yermukhanbet. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class MainViewController: UIViewController {
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(MainTableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    private var bag = DisposeBag()
    let viewModel: MainViewModel
    init(viewModel: MainViewModel){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func loadView() {
        super.loadView()
        self.setTableView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        bindData()
    }
    private func setTableView(){
        self.view.addSubview(tableView)
        tableView.frame = self.view.bounds
    }
    private func bindData(){
        //Bind items to table
        viewModel.items.bind(
            to: tableView.rx.items(cellIdentifier: "cell",
                                   cellType: MainTableViewCell.self)
        ){row, model, cell in
            cell.set(name: model.name, image: model.image)
        }.disposed(by: bag)
        //on selected
        tableView.rx.modelSelected(Product.self).bind{ product in
            print(product.name)
        }.disposed(by: bag)
        //fetch items
        viewModel.fetchData()
    }
}
