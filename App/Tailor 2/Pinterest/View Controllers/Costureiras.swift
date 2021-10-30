//
//  Costureiras.swift
//  Tailor
//
//  Created by Student on 27/04/2019.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation

class Costureiras {
  
  let nome: String
  
  init(nome:String) {
    self.nome = nome
  }
  
  init(json: [String: AnyObject]) {
    self.nome = json["nome"] as? String ?? ""
  }
}




class CostureirasDAO {
  
  
  static func getCostureiras() -> [Costureiras]{
    
    return [
      
      //Receber esses arquivos do IBM Cloud
      Costureiras(nome:"Jorge"),
      Costureiras(nome:"Maria"),
      Costureiras(nome:"Roberto")
      
      
      
    ]
    
  }
  
  
  
  
  //
  //    static func getCostureiras (callback: @escaping (([Costureiras]) -> Void)) {
  //
  //        let endpoint: String = "https://tailor.mybluemix.net/list"
  //
  //        guard let url = URL(string: endpoint) else {
  //            print("Error: Cannot create URL")
  //            return
  //        }
  //
  //
  //        let urlRequest = URLRequest(url: url)
  //
  //        let task = URLSession.shared.dataTask(with: urlRequest, completionHandler: { (data, response, error) in
  //
  //            if error != nil {
  //                print("Error = \(String(describing: error))")
  //                return
  //            }
  //
  //            let responseString = String(data: data!, encoding: String.Encoding.utf8)
  //            print("responseString = \(String(describing: responseString))")
  //
  //            DispatchQueue.main.async() {
  //                do {
  //                    if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [[String: AnyObject]] {
  //
  //                        var costura = [Costureiras]()
  //                        for x in 0 ... json.count - 1 {
  //                            costura.append(Costureiras(json: json[x]))
  //                        }
  //                        //let last = json.count - 1
  //
  //
  //                        //let costura = Costureiras(json: json[last])
  //
  //
  //
  //                        //let nomeCostura = costura.nome
  //
  //                        //print("Seu nome é \(nomeCostura)")
  //
  //                        callback(costura)
  //
  //                    }else {
  //
  //                        print("Não foi dessa vez campeão")
  //                    }
  //                } catch let error as NSError {
  //                    print("Error = \(error.localizedDescription)")
  //                }
  //            }
  //
  //
  //        })
  //
  //        task.resume()
  //
  //
  //    }
  
  
  
  
  
}
