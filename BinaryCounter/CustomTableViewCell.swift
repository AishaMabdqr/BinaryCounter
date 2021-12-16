//
//  CustomTableViewCell.swift
//  BinaryCounter
//
//  Created by A Ab. on 12/05/1443 AH.
//

import UIKit

protocol showTotal{
    func showTotal(value: Int)
}

class CustomTableViewCell: UITableViewCell {
    
    var delegate: showTotal?
    
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        var value = Int(valueLabel!.text!)
        
        if (sender.titleLabel!.text == "-"){
            value = -value!
        }
        
        delegate?.showTotal(value: value!)
        
    }
    

}
