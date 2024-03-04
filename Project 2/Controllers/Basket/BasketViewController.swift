//
//  BasketViewController.swift
//  Project 2
//
//  Created by User on 24.02.2024.
//

import UIKit

class BasketViewController: UIViewController {
    let basketView = BasketView()
    let count: [Purchase] = Purchase.mockData

    override func viewDidLoad() {
        super.viewDidLoad()
        view = basketView
        basketView.uiTableView.dataSource = self
        basketView.uiTableView.delegate = self

    }
}

extension BasketViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.count.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BasketViewCell.id) as! BasketViewCell
        return cell
    }
}

extension BasketViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
