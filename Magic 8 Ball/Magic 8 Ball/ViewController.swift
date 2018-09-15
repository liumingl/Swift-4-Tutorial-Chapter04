//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by 刘铭 on 2018/1/1.
//  Copyright © 2018年 刘铭. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  let ballArray = ["ball1","ball2","ball3","ball4","ball5","ball6","ball7","ball8","ball9","ball10","ball11","ball12","ball13","ball14","ball15"]
  
  var randomBallNumber: Int = 0
  
  @IBOutlet weak var imageView: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    newBallImage()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func askButtonPressed(_ sender: UIButton) {
    newBallImage()
  }
  
  func newBallImage() {
    randomBallNumber = Int(arc4random_uniform(15))
    imageView.image = UIImage(named: ballArray[randomBallNumber])
  }
  
  override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
    newBallImage()
  }
}

