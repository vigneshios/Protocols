//
//  ViewController.swift
//  CustomDelegatesProtocols
//
//  Created by Apple on 21/02/18.
//  Copyright © 2018 Vignesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlets:
    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var playerNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func pickWinnerPressed(_ sender: Any) {
        let pickPlayerVC = storyboard?.instantiateViewController(withIdentifier: "pickPlayerVC") as! ChoosePlayerVC
        pickPlayerVC.playerDelegate = self as myPlayerDelegate
        present(pickPlayerVC, animated: true, completion: nil)
    }
}

extension ViewController: myPlayerDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        playerImageView.image = image
        playerNameLabel.text = "Hey, You picked \(name),Congrats!"
        view.backgroundColor = color
    }
}
