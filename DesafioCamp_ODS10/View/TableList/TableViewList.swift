//
//  TableViewList.swift
//  DesafioCamp_ODS10
//
//  Created by Rita Lisboa on 16/04/22.
//

import UIKit

class TableViewList: UITableView {

    var documents: [DocumentsParams] = [
    ]
    
    
    
    private lazy var homeTableView: UITableView = {
        let homeTableView = UITableView()
        homeTableView.register(HomeTableView.self,
                          forCellReuseIdentifier: HomeTableView.identifier)
        homeTableView.translatesAutoresizingMaskIntoConstraints = false
        return homeTableView
    }()

}

// MARK: - extensions

extension TableViewList: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return documents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = homeTableView.dequeueReusableCell(withIdentifier: HomeTableView.identifier, for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 132
    }
}
