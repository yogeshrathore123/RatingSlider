//
//  ViewController.swift
//  RatingSlider
//
//  Created by Yogesh Rathore on 31/05/17.
//  Copyright © 2017 Sybrant Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var ratingLbl: UILabel!
    @IBOutlet weak var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let blankimage = UIImage(named: "bb.png")
        let blanktrackImg = blankimage?.resizableImage(withCapInsets: .zero, resizingMode: .tile)
        slider.setMaximumTrackImage(blanktrackImg, for: .normal)
        
        let fillimage = UIImage(named: "ff.png")
        let filltrackImg = fillimage?.resizableImage(withCapInsets: .zero, resizingMode: .tile)
        slider.setMinimumTrackImage(filltrackImg, for: .normal)

        let starImage = UIImage(named: "star.png")
        slider.setThumbImage(starImage, for: .normal)
        slider.setThumbImage(starImage, for: .highlighted)
        
        // Tapgesture for hidding keyboard
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.slidertouchAction(_:)))
        tapGesture.delegate = self
        self.slider.addGestureRecognizer(tapGesture)
        
        // Add value changed action
        slider.addTarget (self,action: #selector(numberValueChanged), for: UIControlEvents.valueChanged)
       
    }
    
    func numberValueChanged(sender: UISlider) {
       // slider.setValue(Float(Int(slider.value)), animated: true)
       //  print("lllllllM \(slider.value)")
   /*
        let x = Float(slider.value)
        let slidervalue = String(format: "%.01f", x)
        
        print("myyyy \(slidervalue)")
        
        if slidervalue == "1.0" {
            print("1 select")
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "2.0" {
            print("1.5 select")
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "3.0" {
            print("2 select")
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "4.0" {
            print("2.5 select")
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "5.0" {
            print("3 select")
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "6.0" {
            print("3.5 select")
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "7.0" {
            print("4 select")
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "8.0" {
            print("4.5 select")
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "9.0" {
            print("5 select")
            slider.setValue(Float(slidervalue)!, animated: true)
        }
 */
    }
    
    func slidertouchAction(_ sender: UITapGestureRecognizer) {
  
        let pointTapped: CGPoint = sender.location(in: self.view)
        
        let positionOfSlider: CGPoint = slider.frame.origin
        let widthOfSlider: CGFloat = slider.frame.size.width
        let newValue = ((pointTapped.x - positionOfSlider.x) * CGFloat(slider.maximumValue) / widthOfSlider)
        print(newValue)
        
  
        
        let slidervalue = String(format: "%.01f", newValue)
        print(slidervalue)
        
        if slidervalue == "0.4" {
            print("1 select")
            ratingLbl.text = "1.0"
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "1.4" {
            print("1.5 select")
            ratingLbl.text = "1.5"
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "2.4" {
            print("2 select")
            ratingLbl.text = "2.0"
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "4.0" {
            print("2.5 select")
            ratingLbl.text = "2.5"
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "5.0" {
            print("3 select")
            ratingLbl.text = "3.0"
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "6.0" {
            print("3.5 select")
            ratingLbl.text = "3.5"
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "7.0" {
            print("4 select")
            ratingLbl.text = "4.0"
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "8.0" {
            print("4.5 select")
            ratingLbl.text = "4.5"
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "9.0" {
            print("5 select")
            ratingLbl.text = "5.0"
            slider.setValue(Float(slidervalue)!, animated: true)
        }
 
    }
    
    

    @IBAction func sliderTouchAction(_ sender: Any) {
      //  print("touch value \(slider.value)")
     //   let x = Float(slider.value)
     //   let i = lrintf(x)
     //   print(i) // 13
       
    }
    @IBAction func slidervalueChanged(_ sender: Any) {
      //  print("value cahnged \(slider.value)")
     /*   let x = Float(slider.value)
        let i = lrintf(x)
        print(i) // 13
        let slidervalue = String(format: "%.01f", x)
        
        print("slider value \(slidervalue)")
        
        if slidervalue == "1.0" {
            print("1 select")
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "1.5" {
            print("1.5 select")
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "2.0" {
            print("2 select")
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "2.5" {
            print("2.5 select")
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "3.0" {
            print("3 select")
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "3.5" {
            print("3.5 select")
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "4.0" {
            print("4 select")
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "4.5" {
            print("4.5 select")
            slider.setValue(Float(slidervalue)!, animated: true)
        }else if slidervalue == "5.0" {
            print("5 select")
            slider.setValue(Float(slidervalue)!, animated: true)
        }
 */
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

