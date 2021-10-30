//
//  BuscaTableViewController.swift
//  Tailor
//
//  Created by Student on 27/04/2019.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class BuscaTableViewController: UITableViewController, UISearchBarDelegate {
  
  @IBOutlet weak var searchBar: UISearchBar!
  
  
  //var costuraTeste = BuscaTableViewCell()
  
  var isSearching = false
  
  var costureiras = [Costureiras]()
  
  
  
  var filteredData = [Costureiras]()
  
  
  @IBAction func voltar(segue: UIStoryboardSegue) {
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.costureiras = CostureirasDAO.getCostureiras()
    
    
    
    
    
    searchBar.delegate = self
    searchBar.returnKeyType = UIReturnKeyType.done
    
  }
  
  
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    
    if isSearching {
      return filteredData.count
    }
    
    
    
    return costureiras.count
  }
  
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "buscaCell", for: indexPath)
    
    if let costureiraCell = cell as? BuscaTableViewCell{
      
      if isSearching {
        
        //                CostureirasDAO.getCostureiras {
        //                    (costura) in
        //                    costureiraCell.nomeCostureira.text = String(describing: costura[0].nome)
        //                }
        
        let costureira = self.filteredData[indexPath.row]
        costureiraCell.nomeCostureira.text = costureira.nome
        
      }
      else
      {
        
        //                let x = Int(arc4random_uniform(3))
        //                CostureirasDAO.getCostureiras {
        //                    (costura) in
        //                    costureiraCell.nomeCostureira.text = String(describing: costura[x].nome)
        //                }
        
        
        let costureira = self.costureiras[indexPath.row]
        costureiraCell.nomeCostureira.text = costureira.nome
        
        
      }
      
      
      
    }
    
    return cell
  }
  
  func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
    if searchBar.text == nil || searchBar.text == ""{
      isSearching = false
      view.endEditing(true)
      tableView.reloadData()
    } else {
      isSearching = true
      //filteredData = costureiras.filter({$0.nome.prefix(searchText.count) == searchText})
      tableView.reloadData()
    }
  }
  
}
