//
//  CarrinhoTableViewCell.swift
//  Pinterest
//
//  Created by MacBook on 01/05/19.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit

class CarrinhoTableViewCell: UITableViewCell {

  @IBOutlet weak var Title: UILabel!
  @IBOutlet weak var capption: UILabel!
  @IBOutlet weak var imageFoto: UIImageView!
  
  /*var mainImageView : UIImageView = {
    var imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
    
  }()
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
  
  }*/
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  
  

}
