//
//  PerfilTableViewController.swift
//  Pinterest
//
//  Created by MacBook on 02/05/19.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit

class PerfilTableViewController: UITableViewController {

  
  
  let imageArray = [UIImage(named:"011"),UIImage(named:"02"),UIImage(named:"03"),UIImage(named:"04"),UIImage(named:"05")]
  
  let nameArray = ["image 1","oi","oi","imagem 4","imagem 5"]
  
  let descArray = ["fancy bitch","nasty guys","\"tomate cru\"","chero lolo","aula de gdi"]
  
  
  @IBOutlet weak var label: UILabel!
  var texto: String = ""
  
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
    super.viewDidLoad()
    label.text = texto
    
    imageView.layer.borderWidth = 1
    imageView.layer.masksToBounds = false
    imageView.layer.borderColor = UIColor.black.cgColor
    imageView.layer.cornerRadius = imageView.frame.height/2
    imageView.clipsToBounds = true
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = false
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MARK: - Table view data source
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return (imageArray.count)
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
    
    cell.imageView?.image = imageArray[indexPath.row]
    cell.textLabel?.text = nameArray[indexPath.row]
    
    
    return (cell)
  }


    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


