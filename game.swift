class JogoForca {
    let tentativas = 10;

    var arrayPalavra:[String] = []
    var filtered:[String] = []
    var letrasDescobertas: [String] = []
    var acertou:Bool = false
    var contador = 0;
    var dicaPalavra: String;
  var count = 0;
  
    init(palavra: String, dica: String) {
        dicaPalavra = dica;
        for i in palavra {
            arrayPalavra.append(String(i.uppercased()))
            letrasDescobertas.append("-")
        }
    }


    func jogar() {
         print("A palavra tem \(arrayPalavra.count) letras.")
         print("A dica é: \(dicaPalavra)")

      
         while acertou == false && contador < tentativas{
            contador += 1;
            print("Digite uma letra:")
            let letra = readLine()
            
            for n in 0..<arrayPalavra.count{
                if letra!.uppercased() == arrayPalavra[n] {
                    letrasDescobertas[n] = letra!.uppercased()
                    count = 1
                }       
                
          
            }

           if (count > 0) {
              print("Você acertou, essa letra existe na palavra")           
           } else {
               print("Essa letra não existe na palavra, tente novamente :(")
          }

            acertou = true
            for n in 0..<arrayPalavra.count{
                if letrasDescobertas[n] == "-" {
                    acertou = false
                }          
            }
            print(letrasDescobertas);
            count = 0
         }
    }


}

var obj = JogoForca(palavra: "Rafael", dica: "meu nome")
obj.jogar()
