//
//  ViewController.swift
//  ImageView
//
//  Created by 이윤수 on 2021/02/19.
//

import UIKit

class ViewController: UIViewController {

  var imgZoom = false
  var imgGreen: UIImage?
  var imgRed: UIImage?
  var imgTraffic: UIImage?
  @IBOutlet var imageView: UIImageView!
  @IBOutlet var buttonResize: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    imgGreen = UIImage(named: "greenlight.jpg")
    imgRed = UIImage(named: "redlight.jpg")
    imgTraffic = UIImage(named: "trafficlight.jpg")

    imageView.image = imgTraffic
  }
  @IBAction func buttonResizeImg(_ sender: UIButton) { let scale: CGFloat = 2.0
    var newWidht: CGFloat, newHeight: CGFloat
    if (imgZoom) {
      newWidht = imageView.frame.width / scale
      newHeight = imageView.frame.height
      buttonResize.setTitle("확대", for: .normal)
    }
    else {
      newWidht = imageView.frame.width * scale
      newHeight = imageView.frame.height
      buttonResize.setTitle("축소", for: .normal)

    }
    imageView.frame.size = CGSize(width: newWidht, height: newHeight)
    imgZoom = !imgZoom
  }
  @IBAction func turnOnLight(_ sender: UISwitch) {
    if sender.isOn {
      imageView.image = imgGreen
    } else {
      imageView.image = imgRed
    }
  }


}

