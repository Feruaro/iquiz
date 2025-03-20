//
//  ViewController.swift
//  iQuiz
//
//  Created by Fernanda Ayres Ruaro on 19/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var botao: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
    }
    
    func configuraLayout() {
        navigationItem.hidesBackButton = true
        botao.layer.cornerRadius = 16
    }


}

