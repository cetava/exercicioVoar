import UIKit

protocol Voador {
    func Voar()
}

class Pato: Voador {
    private var energia: Int
    
    init(energia: Int) {
        self.energia = energia
    }
    
    func Voar() {
        var totalEnergia = 0
        totalEnergia = energia - 5
        
        if totalEnergia <= 0 {
            print("Pato sem enenrgia!")
        }else {
            print("Pato voando!")
        }
    }
}

class Aviao: Voador {
    func Voar() {
        print("Avião voando!")
    }
}

class SuperHomem: Voador {
    func Voar() {
        print("Super-Homem voando!")
    }
}

class TorreDeControle {
    var voadores = [Voador]()
    
    func voamTodos () {
        for item in voadores {
            item.Voar()
        }
    }
    
    func adicionarVoador(umVoador: Voador) {
        voadores.append(umVoador)
    }
}

let pato = Pato(energia: 0)
let aviao = Aviao()
let superHomem = SuperHomem()

let torreDeControle = TorreDeControle()

torreDeControle.adicionarVoador(umVoador: pato)
torreDeControle.adicionarVoador(umVoador: aviao)
torreDeControle.adicionarVoador(umVoador: superHomem)

torreDeControle.voamTodos()
torreDeControle.voamTodos()
torreDeControle.voamTodos()
