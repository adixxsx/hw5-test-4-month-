//
//  ViewController.swift
//  hw5(4-month)
//
//  Created by user on 26/12/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let furnitures: [Furniture] = [
            Furniture(image: "Furniture", title: "Furniture", quantity: "785 Items"),
            Furniture(image: "Kitchenware", title: "Kitchenware", quantity: "645 Items"),
            Furniture(image: "ReadingTable", title: "Reading Table", quantity: "Inventory")
        ]
    
    let tableView = UITableView()
    let cell = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(FurnitureCell.self, forCellReuseIdentifier: cell)
        
        configureTableView()
    }

    private func configureTableView() {
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.horizontalEdges.equalToSuperview().inset(16)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        furnitures.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: cell, for: indexPath) as! FurnitureCell
            cell.setupDataCell(
                image: furnitures[indexPath.row].image,
                title: furnitures[indexPath.row].title,
                description: furnitures[indexPath.row].quantity
            )
            return cell
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = SecondVC()
                vc.setupDataScreen(
                image: furnitures[indexPath.row].image,
                text: furnitures[indexPath.row].title
            )
            navigationController?.pushViewController(vc, animated: true)
        }
}

