//
//  ViewController.swift
//  BinaryCounter
//
//  Created by A Ab. on 12/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var totalLabel: UILabel!
    var total = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! CustomTableViewCell
        cell.delegate = self
        cell.valueLabel.text = String(describing: pow(10, indexPath.row))
        return cell
    }
}

extension ViewController: showTotal{
    func showTotal(value: Int) {
        self.total += value
        totalLabel.text = "Total = \(self.total)"
    }
    
    
}

