//
//  HomeViewController.swift
//  DesafioCamp_ODS10
//
//  Created by Rita Lisboa on 16/04/22.
//

import UIKit

class HomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var gratuidadeButton: UIImageView!
    @IBOutlet weak var ilhasButton: UIImageView!
    @IBOutlet weak var FilterList: UICollectionView!
    @IBOutlet weak var tableViewList: UITableView!
    
    var documents: [DocumentsParams] = [
    ]
  
    override func viewDidLoad() {
        super.viewDidLoad()
        homeTableView.delegate = self
        homeTableView.dataSource = self
    }
    
    private lazy var homeTableView: UITableView = {
        let homeTableView = UITableView()
        homeTableView.register(HomeTableView.self,
                          forCellReuseIdentifier: HomeTableView.identifier)
        homeTableView.translatesAutoresizingMaskIntoConstraints = false
        return homeTableView
    }()
    
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = homeTableView.dequeueReusableCell(withIdentifier: K.tableListCell, for: indexPath)
//        cell.textLabel?.text
        return cell
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 132
//    }

}
