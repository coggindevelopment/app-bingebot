//
//  ViewController.swift
//  bingebot
//
//  Created by Nicholas Coggin on 2/2/19.
//  Copyright © 2019 Nicholas Coggin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showsLabel: UILabel!
    @IBOutlet weak var randomShowLabel: UILabel!
    @IBOutlet weak var bingebotSpokenLabel: UILabel!
    @IBOutlet weak var addShowTextField: UITextField!
    @IBOutlet weak var addShowBtn: UIButton!
    @IBOutlet weak var randomShowStackView: UIStackView!
    @IBOutlet weak var addShowStackView: UIStackView!
    @IBOutlet weak var showsStackView: UIStackView!
    
    var shows: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showsStackView.isHidden = true
        randomShowStackView.isHidden = true
    }
    
    func updateShowsLabel() {
        showsLabel.text = shows.joined(separator: ", ")
    }

    @IBAction func addShowBtnWasPressed(_ sender: Any) {
        guard let showName = addShowTextField.text else { return }
        shows.append(showName)
        updateShowsLabel()
        addShowTextField.text = ""
        showsStackView.isHidden = false
        
        if shows.count > 1 {
            randomShowStackView.isHidden = false
            bingebotSpokenLabel.isHidden = true
            randomShowLabel.isHidden = true
        }
    }
}

