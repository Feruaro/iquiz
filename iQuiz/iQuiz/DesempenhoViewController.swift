//
//  DesempenhoViewController.swift
//  iQuiz
//
//  Created by Fernanda Ayres Ruaro on 19/03/25.
//

import UIKit

class DesempenhoViewController: UIViewController {
    var pontuacao: Int?
    
    @IBOutlet weak var labelQntdAcertos: UILabel!
    @IBOutlet weak var labelPorcentagem: UILabel!
    @IBOutlet weak var botaoReiniciar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
    }
    
    func configuraLayout() {
        navigationItem.hidesBackButton = true
        botaoReiniciar.layer.cornerRadius = 16
        configuraLabels()
    }
    
    func configuraLabels() {
        guard let pontuacao = pontuacao else { return }
        
        labelQntdAcertos.text = "Você acertou \(pontuacao) de \(questoes.count) questões"
        labelPorcentagem.text = "Percentual final: \(pontuacao * 100 / questoes.count)%"
    }

}
