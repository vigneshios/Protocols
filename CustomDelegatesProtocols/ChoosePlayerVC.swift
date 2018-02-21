//
//  ChoosePlayerVC.swift
//  CustomDelegatesProtocols
//
//  Created by Apple on 21/02/18.
//  Copyright © 2018 Vignesh. All rights reserved.
//

import UIKit

protocol myPlayerDelegate {
     func didTapChoice(image: UIImage, name: String, color: UIColor)
}

class ChoosePlayerVC: UIViewController {

    // delegate
    var playerDelegate : myPlayerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func dismissAction() {
    dismiss(animated: true, completion: nil)
    }

    @IBAction func messiPicked(_ sender: Any) {
        playerDelegate.didTapChoice(image: UIImage(named: "mes")!, name: "messi", color: UIColor.orange)
        dismissAction()
    }
    
    @IBAction func ronaldoPicked(_ sender: Any) {
         playerDelegate.didTapChoice(image: UIImage(named: "ron")!, name: "Ronaldo", color: UIColor.magenta)
        dismissAction()
    }
    
}
