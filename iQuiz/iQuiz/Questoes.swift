//
//  Questoes.swift
//  iQuiz
//
//  Created by Fernanda Ayres Ruaro on 19/03/25.
//

import Foundation

struct Questao {
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}

let questoes: [Questao] = [
    Questao(
        titulo: "Qual é a capital da França?",
        respostas: ["Berlim", "Paris", "Madrid"],
        respostaCorreta: 1
    ),
    Questao(
        titulo: "Quem escreveu o livro 'Dom Casmurro'?",
        respostas: ["Machado de Assis", "José de Alencar", "Clarice Lispector"],
        respostaCorreta: 0
    ),
    Questao(
        titulo: "Qual é o maior planeta do sistema solar?",
        respostas: ["Terra", "Júpiter", "Marte"],
        respostaCorreta: 1
    ),
    Questao(
        titulo: "Em que ano o homem pisou na Lua pela primeira vez?",
        respostas: ["1965", "1972", "1969"],
        respostaCorreta: 2
    ),
    Questao(
        titulo: "Qual é o elemento químico com o símbolo 'O'?",
        respostas: ["Ouro", "Ósmio", "Oxigênio"],
        respostaCorreta: 2
    ),
    Questao(
        titulo: "Quem pintou a 'Monalisa'?",
        respostas: ["Vincent van Gogh", "Pablo Picasso", "Leonardo da Vinci"],
        respostaCorreta: 0
    ),
    Questao(
        titulo: "Qual é o continente mais populoso?",
        respostas: ["Europa", "Ásia", "América do Sul"],
        respostaCorreta: 1
    ),
    Questao(
        titulo: "Qual é a moeda oficial do Japão?",
        respostas: ["Yuan", "Iene", "Won"],
        respostaCorreta: 1
    ),
    Questao(
        titulo: "Quem é conhecido como o 'Pai da História'?",
        respostas: ["Heródoto", "Platão", "Aristóteles"],
        respostaCorreta: 0
    ),
    Questao(
        titulo: "Qual é o maior animal terrestre?",
        respostas: ["Elefante", "Girafa", "Baleia"],
        respostaCorreta: 0
    ),
]
