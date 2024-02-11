//
//  DetailsVC.swift
//  theoffice
//
//  Created by Eda Dilek on 11.02.2024.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedOffice : office?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedOffice?.name
        jobLabel.text = selectedOffice?.job
        imageView.image = selectedOffice?.image

    }
}
