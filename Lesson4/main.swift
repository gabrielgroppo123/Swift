import Foundation

//Exercicio 1
func multiplicar(n: Int, m: Int){
    let multi = n * m
}
if let num1 = readLine(), let num1Int = Int(num1){
    if let num2 = readLine(), let num2Int = Int(num2){
        let resultado = num1Int * num2Int
        print("Dano causado: \(resultado)")
    }
}

//Exercicio 2
func danoRecebido () -> Int{
    if let v = readLine(), let vInt = Int(v){
        if let d = readLine(), let dInt = Int(d){
            let resultado = vInt - dInt
            return resultado
        }
    }
    return 0
    
}
let result = danoRecebido()

if result <= 0{
    print("Personagem derrotado")
}
else{
    print("Vida restante: \(result)")
}

//Exercicio 3
func experienciaGanha() -> Int{
    if let i = readLine(), let iInt = Int(i){
        if let x = readLine(), let xInt = Int(x){
            if let b = readLine(), let bInt = Int(b){
                let experiencia: Int = (iInt * xInt) + bInt
                return experiencia
            }
        }
    }
    return 0
}
let experienciaTotal = experienciaGanha()
print("Experiencia ganha: \(experienciaTotal)")

//Exercicio 4
if let nome = readLine(){
    if let vidamanaforca = readLine(){
        let atributos = vidamanaforca.split(separator: " ")
        print("Heroi: \(nome) - Vida: \(atributos[0]), Mana: \(atributos[1]), Forca: \(atributos[2])")
    }
}

//Exercicio 5
func xpEmoedas() -> String{
    if let nome = readLine(){
        if let n = readLine(), let nInt = Int(n){
            let xp = nInt * 10
            let moedas = nInt * 5
            return ("Venceu \(nome)! Ganhou \(xp) XP e \(moedas) moedas")
        }
    }
    return ""
}
let xpmoedas = xpEmoedas()
print(xpmoedas)

//Exercicio 6
func subirNivel () -> String{
    if let n = readLine(), let nInt = Int(n){
        if let x = readLine(), let xInt = Int(x){
            let xpnecessaria = nInt * 100
            if xInt >= xpnecessaria{
                let y: Int = nInt + 1
                return ("Pode subir para o nivel \(y)!")
            }
            else{
                let z: Int = xpnecessaria - xInt
                return ("Precisa de \(z) XP para subir de nivel")
            }
        }
    }
    return ""
}
let podesubirnivel = subirNivel()
print(podesubirnivel)

//Exercicio 7
func usarPocao() -> Int{
    if let v = readLine(), let vInt = Int(v){
        if let m = readLine(), let mInt = Int(m){
            if let c = readLine(), let cInt = Int(c){
                if cInt == 0{
                    let vidafinal = vInt + 50
                    if vidafinal >= mInt{
                        return mInt
                    }
                    else{
                        return vidafinal
                    }
                }
                else{
                    let vidafinal = vInt + cInt
                    if vidafinal >= mInt{
                        return mInt
                    }
                    else{
                        return vidafinal
                    }
                }
            }
        }
    }
    return 0
}
let finalvida = usarPocao()
print("Vida apos pocao: \(finalvida)")


//Exercicio 8

let nf = readLine() ?? ""
let nrfr = readLine() ?? ""

let nef = nf.split(separator: " ")
let nrefr = nrfr.split(separator: " ")

let nivelforca = nef.compactMap({Int($0)})
let n = nivelforca[0]
let f = nivelforca[1]

let nivelforcarec = nef.compactMap({Int($0)})
let nr = nivelforcarec[0]
let fr = nivelforcarec[1]

enum EquipamentoErro1: Error{
    case nivelInsuficiente1, forcaInsuficiente1
}
func checagem1(_ n: Int,_ f: Int,_ nr: Int,_ fr: Int) throws -> String{
    if n < nr{
        throw EquipamentoErro1.nivelInsuficiente1
    }
    if f < fr{
        throw EquipamentoErro1.forcaInsuficiente1
    }
    return "Equipamento validado com sucesso"
}

do{
    let checado1 = try checagem1(n, f, nr, fr)
    print(checado1)
}
catch EquipamentoErro1.nivelInsuficiente1{
    print("Erro: Nivel Insuficiente")
    }
catch EquipamentoErro1.forcaInsuficiente1{
    print("Erro: Forca Insuficiente")
}

//Exercicio 9

let nmo = readLine() ?? ""

let nmoSeparado = nmo.split(separator: " ")

let nmoInt  = nmoSeparado.compactMap({Int($0)})
let n = nmoInt[0]
let m = nmoInt[1]
let o = nmoInt[2]

enum EquipamentoErro: Error{
    case nivelInsuficiente, xpInsuficiente, ouroInsuficiente
}
func checagem(_ n: Int,_ m: Int,_ o: Int) throws -> String{
    if n < 20{
        throw EquipamentoErro.nivelInsuficiente
    }
    if m < 5{
        throw EquipamentoErro.xpInsuficiente
    }
    
    if o < 1000{
        throw EquipamentoErro.ouroInsuficiente
    }
    return ("Missao epica aceita! Boa sorte, heroi!")
}

do{
    let checado = try checagem(n, m, o)
    print(checado)
}
catch EquipamentoErro.nivelInsuficiente{
    print("Erro: Nivel minimo nao atingido")
    }
catch EquipamentoErro.xpInsuficiente{
    print("Erro: Experiencia insuficiente em missoes")
}
catch EquipamentoErro.ouroInsuficiente{
    print("Erro: Ouro insuficiente")
}


//Exercicio 10

import Foundation

enum BatalhaErro: Error {
    case heroiFraco
}

func validarBatalha(nivelHeroi: Int, nivelMonstro: Int) throws {
    if nivelHeroi < (nivelMonstro / 2) {
        throw BatalhaErro.heroiFraco
    }
}

func calcularDano(forca: Int) -> Int {
    return forca * 2
}

func calcularRecompensas(nivelMonstro: Int) -> (xp: Int, moedas: Int) {
    let xp = nivelMonstro * 50
    let moedas = nivelMonstro * 20
    return (xp, moedas)
}


let NH = Int(readLine()!)!
let FH = Int(readLine()!)!

let NM = Int(readLine()!)!
let FM = Int(readLine()!)!

do {
    
    try validarBatalha(nivelHeroi: NH, nivelMonstro: NM)

   
    let danoHeroi = calcularDano(forca: FH)
    let danoMonstro = calcularDano(forca: FM)

    
    if danoHeroi >= danoMonstro {
        let recompensas = calcularRecompensas(nivelMonstro: NM)
        print("Vitoria! Dano causado: \(danoHeroi), Dano recebido: \(danoMonstro), Recompensas: \(recompensas.xp) XP e \(recompensas.moedas) moedas")
    } else {
        print("Derrota! Dano causado: \(danoHeroi), Dano recebido: \(danoMonstro)")
    }

} catch BatalhaErro.heroiFraco {
    print("Erro: Heroi muito fraco para esta batalha")
}
