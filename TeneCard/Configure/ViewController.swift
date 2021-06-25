//
//  ViewController.swift
//  TeneCard
//
//  Created by Teneocto on 25/06/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.register(UINib(nibName: Constant.playerCellIdentifier, bundle: nil), forCellReuseIdentifier: Constant.playerCellIdentifier)
        tableView.register(UINib(nibName: Constant.gameListCell, bundle: nil), forCellReuseIdentifier: Constant.gameListCell)
        tableView.dataSource = self
    }
}

// MARK: TableView Delegate and DataSource
extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constant.gameListCell, for: indexPath)
        return cell
    }
    
    
}

