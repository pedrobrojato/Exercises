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
func verifyCpf(cpfNumber: String) -> String {
    if cpfNumber.count == 11 {
        return "CPF VALIDO"
    } else {
        return "CPF INVALIDO"
    }
}
verifyCpf(cpfNumber: "47596049877")

//2
func cnpjValid(cnpjNumber: String) -> Bool {
    (cnpjNumber.count == 14) ? true : false
}
cnpjValid(cnpjNumber: "42997127000177")

//3
func documentsIsValid(myCpf: String, myCnpj: String) -> String {
    var validCpf: Bool {
        (myCpf.count == 11)
    }
    var validCnj: Bool {
        (myCnpj.count == 11)
    }
    if validCpf || validCnj == true {
        return "DADOS VALIDOS"
    } else {
        return "CPF OU CNPJ INVALIDOS"
    }
}
documentsIsValid(myCpf: "47596049877", myCnpj: "42997127000177")

//4
func isValidCep(cepNumber: String) -> Bool {
    (cepNumber.count == 8) ? true : false
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
func returnNumbers(text: String) -> [String] {
    
}
//8
func MaskNumbersCard(numberCard: String) -> String {
    
}

//9
func formatToCurrency(valueProduct: Double) -> String {
    
}

//10

