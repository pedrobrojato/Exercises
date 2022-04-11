import UIKit
import Foundation

//FUNC TEST
func golsOfMatch(placar1: Int, placar2: Int) -> String {
    if placar1 == 0 && placar2 == 0 {
        return "Partida sem gols"
    } else {
        return "Partida com gols"
    }
}
golsOfMatch(placar1: 0, placar2: 0)


//Exercices

//1
func verifyCpf(cpfNumber: String) -> Bool {
    return cpfNumber.count == 11
}

let isValid = verifyCpf(cpfNumber: "47596049877")
    


//2
func cnpjValid(cnpjNumber: String) -> Bool {
    return cnpjNumber.count == 14
}
cnpjValid(cnpjNumber: "42997127000177")

//3
func documentsIsValid(myCpf: String, myCnpj: String) -> Bool {
    return verifyCpf(cpfNumber: myCpf) ||
        cnpjValid(cnpjNumber: myCnpj)
}
documentsIsValid(myCpf: "47596049877", myCnpj: "42997127000177")

func isValidCep(cepNumber: String) -> Bool {
    return cepNumber.count == 8
    
}
isValidCep(cepNumber: "08122200")

//5
func verifyUrl(urlTest: String) -> String {
    if urlTest.contains("https://") {
        return "URL VALIDA"
    } else {
        return "URL INVALIDA"
    }
}
verifyUrl(urlTest: "https://www.google.com.br")

//6
func verifyPhoneNumber(numberCel: String) -> String {
    if numberCel.count == 9 {
        return "TELEFONE VALIDO"
    } else {
        return "TELEFONE INVALIDO"
    }
}
verifyPhoneNumber(numberCel: "985535088")

//7
func returnTheNumbers(myText: String) -> String {
    var number: String = ""
    for c in myText {
        if Int(String(c)) != nil {
            number.append(c)
        }
    }
    return number
}
returnTheNumbers(myText: "CIVIC 2008")

//8


//9


//10
class Product {
    let id: Int
    let name: String
    let price: Double
    
    init(id: Int, name: String, price: Double) {
        self.id = id
        self.name = name
        self.price = price
    }
}

class Cart {
    private var produtos: [Product]
    
    init() {
        self.produtos = []
    }
    
    init(produtos: [Product]) {
        self.produtos = produtos
    }
    
    
    func addProduct(with product: Product) {
        self.produtos.append(product)
        print("Produto \(product.name) foi adicionado")
    }
    
    /*
     Essa funcao procura a posicao do produto pelo id e depois o romove.
     */
    func removeProduct(id: Int) {
        let index = self.produtos.firstIndex { product in
            return product.id == id
        }
        if let index = index {
            self.produtos.remove(at: index)
            print("Produto \(id) foi removido")
        } else {
            print("Produto nao encontrado ")
        }
    }

    func clearCart() {
        self.produtos.removeAll()
        print("Carrinho vazio")
    }
    
    func total() -> Double {
        var total: Double = 0.0
        for produto in produtos {
            total = total + produto.price
        }
        return total
    }
    
    func total2() -> Double {
        var total: Double = 0.0
        for produto in produtos {
            total += produto.price
        }
        return total
    }
    
    func total3() -> Double {
        return self.produtos.map { $0.price }.reduce(0, +)
    }
    
}

let myCart = Cart()

let produto1 = Product(id: 1, name: "Iphone", price: 1200.0)
let produto2 = Product(id: 2, name: "Ipod", price: 1000.0)

myCart.addProduct(with: produto1)
myCart.total()
myCart.addProduct(with: produto2)
myCart.total()
myCart.removeProduct(id: 1)
myCart.total()
myCart.clearCart()
myCart.removeProduct(id: 3)
myCart.total()
  
