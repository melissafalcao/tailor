//
//  ItemViewController.swift
//  Tailor
//
//  Created by student on 29/04/19.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {

    @IBOutlet weak var criador: UILabel!
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var nome: UILabel!
  
    
   
  
    
    
  var desc: String?
  var image = UIImage()
  var name: String?
  
  
    
   
  
  /*override func prepare(for segue: UIStoryboardSegue , sender: Any?){
     var carrinhoContoller = segue.destination as! CarrinhoTableViewController
    carrinhoContoller.myString = name!
  }*/
  
    override func viewDidLoad() {
        super.viewDidLoad()
      foto.layer.cornerRadius = 15;
      foto.layer.masksToBounds = true;
      
      /*if let patternImage = UIImage(named: "escura") {
        view.backgroundColor = UIColor(patternImage: patternImage)
      }*/
      
      nome.text = desc
      foto.image = image
      criador.text = name
  
  
  }
  
  @IBAction func myButton(_ sender: Any) {
    let myVC = storyboard?.instantiateViewController(withIdentifier: "carrinhoViewController") as! carrinhoViewController
    myVC.texto = criador.text!
    navigationController?.pushViewController(myVC, animated: true)
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
