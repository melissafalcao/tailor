
import Foundation

class Item {
  var nome: String
  var dado: String
  var imagem: String
  init(json: [String: String]) {
    self.nome = json["nome"] ?? ""
    self.dado = json["dado"] ?? ""
    self.imagem = json["imagem"] ?? ""
  }
}

class itensDAO {
  
  static func getItem (callback: @escaping (([Item]) -> Void)) {
    var itens : [Item] = []
    let endpoint: String = "https://tailorlist.mybluemix.net/getitens"
    
    guard let url = URL(string: endpoint) else {
      print("Erroooo: Cannot create URL")
      return
    }
    
    let urlRequest = URLRequest(url: url)
    
    let task = URLSession.shared.dataTask(with: urlRequest, completionHandler: { (data, response, error) in
      
      if error != nil {
        print("Error = \(String(describing: error))")
        return
      }
      
      let responseString = String(data: data!, encoding: String.Encoding.utf8)
      print("responseString = \(String(describing: responseString))")
      
      DispatchQueue.main.async() {
        do {
          if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [[String: AnyObject]] {
            for i in json {
              let item = Item(json: i as! [String : String])
              itens.append(item)
              print("\(item.nome) é este")
              
            }
            callback(itens)
            
            
          }else {
            print("JSON ERRADO")
          }
        } catch let error as NSError {
          print("Error = \(error.localizedDescription)")
        }
      }
      
      
    })
    
    task.resume()
  }
}
