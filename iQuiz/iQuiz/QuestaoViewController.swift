//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Fernanda Ayres Ruaro on 19/03/25.
//

import UIKit

class QuestaoViewController: UIViewController {
    
    var numeroQuestao: Int = 0
    var pontuacao: Int = 0

    @IBOutlet weak var tituloQuestao: UILabel!
    @IBOutlet var botoesQuestoes: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
        configuraQuestoes()
    }

    func configuraLayout() {
        navigationItem.hidesBackButton = true
        
        for botao in botoesQuestoes {
            botao.layer.cornerRadius = 16
        }
    }
    
    @objc func configuraQuestoes() {
        let questaoAtual = questoes[numeroQuestao]
        tituloQuestao.text = questaoAtual.titulo
        
        for botao in botoesQuestoes {
            botao.backgroundColor = UIColor(red: 116/255, green: 58/225, blue: 1, alpha: 1.0)
            botao.setTitle(questaoAtual.respostas[botao.tag], for: .normal)
        }
    }
    
    @IBAction func respondeQuestao(_ sender: UIButton) {
        let questaoAtual = questoes[numeroQuestao]
        let respostaCorreta = sender.tag == questaoAtual.respostaCorreta
        
        alteraCorBotao(sender, respostaCorreta)
        
        if respostaCorreta {
            pontuacao += 1
        }
        
        if numeroQuestao < questoes.count - 1 {
            numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(configuraQuestoes), userInfo: nil, repeats: false)
        }
    }
    
    func alteraCorBotao(_ botao: UIButton, _ respostaCorreta: Bool) {
        let cor = respostaCorreta ?
        UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0) :
        UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        
        botao.backgroundColor = cor
    }
}
