//
//  HomeViewController.swift
//  DesafioCamp_ODS10
//
//  Created by Rita Lisboa on 16/04/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var gratuidadeButton: UIImageView!
    @IBOutlet weak var ilhasButton: UIImageView!
    
    private lazy var homeTableView: UITableView = {
        let homeTableView = UITableView()
        homeTableView.register(HomeTableView.self,
                          forCellReuseIdentifier: HomeTableView.identifier)
        homeTableView.translatesAutoresizingMaskIntoConstraints = false
        return homeTableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

// MARK: - extensions

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 27
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = homeTableView.dequeueReusableCell(withIdentifier: HomeTableView.identifier, for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 132
    }
}
