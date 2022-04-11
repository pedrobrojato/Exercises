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


