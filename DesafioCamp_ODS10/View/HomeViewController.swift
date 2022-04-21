//
//  HomeViewController.swift
//  DesafioCamp_ODS10
//
//  Created by Rita Lisboa on 16/04/22.
//

import UIKit

class HomeViewController: UIViewController, UIScrollViewDelegate {
    var documents = [DocumentsParams]()

    @IBOutlet weak var gratuidadeButton: UIImageView!
    @IBOutlet weak var ilhasButton: UIImageView!
    @IBOutlet weak var FilterList: UICollectionView!
    @IBOutlet weak var tableViewList: UITableView!
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeTableView.delegate = self
        homeTableView.dataSource = self
        
        let urlString = "https://ods10-backend-develop.herokuapp.com/api/documents"
        if let url = URL(string: urlString) {
            if let data = try? Data(contentsOf: url) {
                parse(json: data)
            }
        }
    }
    
    func parse(json: Data) {
        let decoder = JSONDecoder()
        
        if let jsonDocuments = try? decoder.decode(DocumentsList.self, from: json) {
            documents = jsonDocuments.documentsList
            homeTableView.reloadData()
            
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = homeTableView.dequeueReusableCell(withIdentifier: K.tableListCell, for: indexPath)
        let document = documents[indexPath.row]
        cell.textLabel?.text = document.name
        cell.detailTextLabel?.text = document.shortDescription
        return cell
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 132
//    }

}
