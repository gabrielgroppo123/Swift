import Foundation

//print("Hello, World!")

//if let nstring = readLine(), let n = Int(nstring){
//    if n < 1 || n > 100{
//        print("Digite um numero inteiro entre 1 e 100")
//    }
//    else{
//        var i = 0
//        var inventario = [String]()
//        while i < n{
//            if let item = readLine(){
//                inventario.append(item)
//                i += 1
//            }
//        }
//        if let pstring = readLine(), let p = Int(pstring){
//            if p < 0 || p >= n{
//                print("Digite um numero entre 0 e N")
//            }
//            else{
//                print(inventario[p])
//            }
//        }
//    }
//}


//if let nstring = readLine(), let n = Int(nstring){
//    if n < 1 || n > 100{
//        print("Digite um numero inteiro entre 1 e 100")
//    }
//    else{
//        var i = 0
//        var inventario = [String]()
//        while i < n{
//            if let item = readLine(){
//                inventario.append(item)
//                i += 1
//            }
//        }
//        if let contemitem = readLine(){
//            if inventario.contains(contemitem){
//                print("Total de itens: \(inventario.count). O item \(contemitem) esta no inventario")
//            }
//            else{
//                print("Total de itens: \(inventario.count). O item \(contemitem) nao esta no inventario")
//            }
//        }
//    }
//}

//if let nstring = readLine(), let n = Int(nstring){
//    if n < 1 || n > 50{
//        print("Digite um numero inteiro entre 1 e 50")
//    }
//    else{
//        var i = 0
//        var livro = [String: String]()
//        while i < n{
//            if let feitico = readLine(){
//                let nome = feitico.split(separator: ",")
//                livro[String(nome[0])] = String(nome[1])
//                i += 1
//            }
//        }
//        if let contemitem = readLine(){
//            print("O feitico \(contemitem) tem poder: \(livro[contemitem, default: "0"])")
//        }
//    }
//}

//if let nstring = readLine(), let n = Int(nstring){
//    if n < 1 || n > 50{
//        print("Digite um numero inteiro entre 1 e 50")
//    }
//    else{
//        var i = 0
//        var missoes = [String: String]()
//        while i < n{
//            if let missao = readLine(){
//                let nome = missao.split(separator: ",")
//                missoes[String(nome[0])] = String(nome[1])
//                i += 1
//            }
//        }
//        if let mstring = readLine(), let m = Int(mstring){
//            if m < 1 || m > 10{
//                print("Digite um numero inteiro entre 1 e 10")
//            }
//            else{
//                var i = 0
//                var resposta = String()
//                var consultas = [String]()
//                var complete = String()
//                while i < m{
//                    if let consulta = readLine(){
//                        consultas.append(consulta)
//                        i += 1
//                        if missoes.keys.contains(consulta){
//                            complete = "paga: \(missoes[consulta, default: "0"]) moedas"
//                        }
//                        else{
//                            complete = "nao esta disponivel"
//                        }
//                        resposta += "A missao \(consulta) \(complete). "
//                    }
//                    
//                }
//                print(resposta)
//            }
//        }
//    }
//}

//if let nstring = readLine(), let n = Int(nstring){
//    if n < 1 || n > 100{
//        print("Digite um numero inteiro entre 1 e 100")
//    }
//    else{
//        var i = 0
//        var saida = String()
//        var herois = [String]()
//        while i < n{
//            if let heroi = readLine(){
//                herois.append(heroi)
//                i += 1
//                saida += ("Presente: \(heroi). ")
//            }
//        }
//        print(saida)
//    }
//}
if let nstring = readLine(), let n = Int(nstring){
    if n < 1 || n > 100{
        print("Digite um numero inteiro entre 1 e 100")
    }
    else{
        var saida = String()
        for i in 1...n{
                saida += ("Golpe: \(i), ")
        }
        saida.removeLast(2)
        print(saida)
    }
}

