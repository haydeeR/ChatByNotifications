//
//  FriendListViewController.swift
//  chatByNotification
//
//  Created by Haydee Rodriguez on 5/23/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import UIKit
import PromiseKit

class FriendListTableViewController: UITableViewController {

    var friends: [Friend] = []
   
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        getFriendList()
    }
    
    func registerCells() {
        let nib = UINib(nibName: ReusableTableViewCell.reusableId, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: ReusableTableViewCell.reusableId)
    }
    
    func getFriendList() {
        firstly {
            DataHandler.getList()
        }.done { friends in
            self.friends = friends
        }.ensure {
            self.tableView.reloadData()
        }.catch { error in
            self.show(UIAlertController(coder: error as! NSCoder)!, sender: self)
        }
    }
    
    // Datasource
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (tableView.dequeueReusableCell(withIdentifier: ReusableTableViewCell.reusableId, for: indexPath) as? ReusableTableViewCell)!
        cell.configure(with: friends[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: SegueIdentifier.chatRoom.rawValue, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //do somethig
    }

}
