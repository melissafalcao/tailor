/**
 * Copyright (c) 2017 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 * distribute, sublicense, create a derivative work, and/or sell copies of the
 * Software in any work that is designed, intended, or marketed for pedagogical or
 * instructional purposes related to programming, coding, application development,
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works,
 * or sale is expressly withheld.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import UIKit
import AVFoundation

class PhotoStreamViewController: UICollectionViewController {
  
  
  let imageArray = [UIImage(named:"011"),UIImage(named:"r1"),UIImage(named:"r2"),UIImage(named:"r3"),UIImage(named:"r4"),UIImage(named:"r5"),UIImage(named:"r6"),UIImage(named:"r7"),UIImage(named:"c03"),UIImage(named:"c02"),UIImage(named:"c01")]
  
  //9 itens
  
  let nameArray = ["Versace \"tigger\"","maio amarelo","","spring dress","Supreme black hood","Gucci green dress", "dress sketch","Terno","Country Shirt","Red dress","Image","Image"]
  
  let descArray = ["label","text","text here","text","text here","","","","","",""]
  
  //var photos = Photo.allPhotos()
  
  override var preferredStatusBarStyle : UIStatusBarStyle {
    return UIStatusBarStyle.lightContent
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
    if let patternImage = UIImage(named: "discreta") {
      view.backgroundColor = UIColor(patternImage: patternImage)
    }
    collectionView?.backgroundColor = UIColor.clear
    collectionView?.contentInset = UIEdgeInsets(top: 23, left: 10, bottom: 10, right: 10)
    // Set the PinterestLayout delegate
    if let layout = collectionView?.collectionViewLayout as? PinterestLayout {
      layout.delegate = self
    }
  }
  
}





extension PhotoStreamViewController {
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return imageArray.count
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AnnotatedPhotoCell", for: indexPath) as! AnnotatedPhotoCell
    
    cell.imgImage.image = imageArray[indexPath.row]
    cell.lblImageName.text! = nameArray[indexPath.row]
    cell.lblDesc.text! = descArray[indexPath.row]
    
    
    
    return cell
  }
  
  override func collectionView(_  collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
    let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let desVC = mainStoryboard.instantiateViewController(withIdentifier: "ItemViewController") as!
    ItemViewController
    desVC.image = imageArray[indexPath.row]!
    desVC.name = nameArray[indexPath.row]
    desVC.desc = descArray[indexPath.row]
    self.navigationController?.pushViewController(desVC, animated: true)
    
  }
  
  
}

  






extension PhotoStreamViewController : PinterestLayoutDelegate {
  
  // 1. Returns the photo height
  func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath:IndexPath) -> CGFloat {
    return imageArray[indexPath.item]!.size.height
  }
  
}


/*extension PhotoStreamViewController {
 
 override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
 return photos.count
 }
 
 override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
 let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AnnotatedPhotoCell", for: indexPath)
 if let annotateCell = cell as? AnnotatedPhotoCell {
 annotateCell.photo = photos[indexPath.item]
 }
 return cell
 }
 
 }*/


//MARK: - PINTEREST LAYOUT DELEGATE
/*extension PhotoStreamViewController : PinterestLayoutDelegate {
  
  // 1. Returns the photo height
  func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath:IndexPath) -> CGFloat {
    return photos[indexPath.item].image.size.height
  }

}*/
