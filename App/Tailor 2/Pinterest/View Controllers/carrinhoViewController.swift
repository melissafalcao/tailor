//
//  carrinhoViewController.swift
//  Tailor
//
//  Created by Daniel Bastos on 03/05/19.
//  Copyright © 2019 Tailor INC. All rights reserved.
//

import UIKit

class carrinhoViewController: UIViewController {

 
  @IBOutlet weak var caption: UILabel!
  @IBOutlet weak var titulo: UILabel!
  @IBOutlet weak var image: UIImageView!
  @IBOutlet var view1: UIView!
    
  @IBOutlet weak var image1: UIImageView!
  @IBOutlet weak var titulo1: UILabel!
  @IBOutlet weak var caption1: UILabel!
  @IBOutlet var view2: UIView!
    
  @IBOutlet weak var image2: UIImageView!
  @IBOutlet weak var titulo2: UILabel!
  @IBOutlet weak var caption2: UILabel!
  @IBOutlet var view3: UIView!
    
  
  var texto: String = ""
  override func viewDidLoad() {
        super.viewDidLoad()

    itensDAO.getItem { (item) in
      self.titulo.text = String(describing: item[0].nome)
      self.caption.text = String(describing: item[0].dado)
      self.image.layer.cornerRadius = 20;
      self.image.layer.masksToBounds = true;
      self.view1.layer.cornerRadius = 20;
      self.view1.layer.masksToBounds = true;
        
        
      self.titulo1.text = String(describing: item[1].nome)
      self.caption1.text = String(describing: item[1].dado)
      self.image1.layer.cornerRadius = 20;
      self.image1.layer.masksToBounds = true;
      self.view2.layer.cornerRadius = 20;
      self.view2.layer.masksToBounds = true;
        
        
      self.titulo2.text = String(describing: item[2].nome)
      self.caption2.text = String(describing: item[2].dado)
      self.image2.layer.cornerRadius = 20;
      self.image2.layer.masksToBounds = true;
      self.view3.layer.cornerRadius = 20;
      self.view3.layer.masksToBounds = true;
        
        
      
    }
        // Do any additional setup after loading the view.
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
