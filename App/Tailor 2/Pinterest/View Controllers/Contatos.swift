//
//  Contatos.swift
//  Tailor
//
//  Created by Student on 26/04/2019.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation

class Contatos {
  
  let nomeContato: String
  let imagemContato: String
  let mensagemRecente: String
  
  init(nomeContato:String, imagemContato:String, mensagemRecente:String) {
    self.nomeContato = nomeContato
    self.imagemContato = imagemContato
    self.mensagemRecente = mensagemRecente
  }
}




class ContatoDAO {
  
  static func getContatos() -> [Contatos]{
    
    return [
      
      //Receber esses arquivos do IBM Cloud
      Contatos(nomeContato: "Botonaldo", imagemContato: "bot", mensagemRecente: "Olá, como posso te ajudar?"),
      Contatos(nomeContato: "Dona Zenilda", imagemContato: "zenilde", mensagemRecente: "É três reais...")
      
      
      
    ]
    
  }
  
}
