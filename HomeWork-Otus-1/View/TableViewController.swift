//
//  TableViewController.swift
//  HomeWork-Otus-1
//
//  Created by Albert Fayzullin on 20.04.2022.
//

import UIKit
import Foundation

class TableViewController: UIViewController {
    
    @IBOutlet weak var positionL: UILabel!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var usersList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.usersList.delegate = self
        self.usersList.dataSource = self
        self.usersList.reloadData()
    }
}

extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return UserManager.shared.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UsersCell", for: indexPath) as? UsersCell else {
            return UITableViewCell()
        }
        let item = UserManager.shared.data[indexPath.row]
        cell.setupItem(item: item)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detail" {
            if let destination = segue.destination as? DetailUserVC {
                if let cell = sender as? UITableViewCell {
                    if let index = usersList.indexPath(for: cell) {
                        let item = UserManager.shared.data[index.row]
                        destination.position = item.position
                        destination.firstname = item.firstname
                        destination.fullname = "\(item.firstname) \(item.lastname)"
                        destination.address = item.location
                    }
                }
                
            }
        }
    }
}
