//
//  ViewController.swift
//  SideMenu
//
//  Created by Sebastian Strus on 2018-04-08.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var sideView: UIView!
    @IBOutlet weak var shapeView: UIView!
    @IBOutlet weak var partShapeView: UIView!
    @IBOutlet weak var waveView: UIImageView!
    
    @IBOutlet weak var backgroundBtn: UIButton!
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var icon1View: UIImageView!
    @IBOutlet weak var icon2View: UIImageView!
    @IBOutlet weak var icon3View: UIImageView!
    @IBOutlet weak var icon4View: UIImageView!
    @IBOutlet weak var icon5View: UIImageView!
    @IBOutlet weak var icon6View: UIImageView!
    
    var currentWindow: UIWindow?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        currentWindow = UIApplication.shared.keyWindow
        currentWindow?.addSubview(sideView)
        sideView.clipsToBounds = true
        sideView.alpha = 0.0
        
        
        //set image and icons
        profileImageView.layer.cornerRadius = 28
        profileImageView.layer.borderWidth = 1
        profileImageView.clipsToBounds = true
        profileImageView.transform = CGAffineTransform(translationX: 69, y: 0)
        
        icon1View.image = UIImage(named:"home_icon")?.withRenderingMode(.alwaysTemplate)
        icon1View.tintColor = UIColor.white
        icon1View.transform = CGAffineTransform(translationX: 69, y: 0)
        
        icon2View.image = UIImage(named:"profile_icon")?.withRenderingMode(.alwaysTemplate)
        icon2View.tintColor = UIColor.white
        icon2View.transform = CGAffineTransform(translationX: 69, y: 0)
        
        icon3View.image = UIImage(named:"map_icon")?.withRenderingMode(.alwaysTemplate)
        icon3View.tintColor = UIColor.white
        icon3View.transform = CGAffineTransform(translationX: 69, y: 0)
        
        icon4View.image = UIImage(named:"add_icon")?.withRenderingMode(.alwaysTemplate)
        icon4View.transform = CGAffineTransform(translationX: 69, y: 0)
        icon4View.tintColor = UIColor.white
        
        icon5View.image = UIImage(named:"list_icon")?.withRenderingMode(.alwaysTemplate)
        icon5View.tintColor = UIColor.white
        icon5View.transform = CGAffineTransform(translationX: 69, y: 0)
        
        icon6View.image = UIImage(named:"settings_icon")?.withRenderingMode(.alwaysTemplate)
        icon6View.tintColor = UIColor.white
        icon6View.transform = CGAffineTransform(translationX: 69, y: 0)
        
        
        waveView.image = UIImage(named:"wave")?.withRenderingMode(.alwaysTemplate)
        waveView.tintColor = UIColor.purple
        
        
        partShapeView.backgroundColor = UIColor.purple
        
        //sideView.layer.zPosition = 1
        
    }
    

    @IBAction func leftButton(_ sender: UIButton) {
        print("leftButtonPressed")
        showMenu()
    }
    @IBAction func rightButton(_ sender: UIButton) {
        print("rightButtonPressed")
        showMenu()
    }
    
    @IBAction func backgroundButton(_ sender: UIButton) {
        Swift.print("backgroundPressed")
        hideMenu()
    }
    
    func showMenu() {
        print("showMenu")
        sideView.alpha = 1.0
        backgroundBtn.alpha = 1.0
        backgroundBtn.isUserInteractionEnabled = true
        
        //move view
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: {
            //self.shapeView.transform = CGAffineTransform(translationX: 138, y: 0)
            self.shapeView.frame = CGRect(x: self.shapeView.frame.origin.x + 138, y: self.shapeView.frame.origin.y, width: self.shapeView.frame.width, height: self.shapeView.frame.width)
        }, completion: nil)
        
        // profile pictur
        UIView.animate(withDuration: 0.5, delay: 1/7, options: [], animations: {
            //self.profileImageView.transform = CGAffineTransform(translationX: 69, y: 0)
            self.profileImageView.frame = CGRect(x: self.profileImageView.frame.origin.x + 69, y: self.profileImageView.frame.origin.y, width: self.profileImageView.frame.width, height: self.profileImageView.frame.width)
        }, completion: nil)
        
        // icon1
        UIView.animate(withDuration: 0.5, delay: 1.3/7, options: [], animations: {
            //self.icon1View.transform = CGAffineTransform(translationX: 69, y: 0)
            self.icon1View.frame = CGRect(x: self.icon1View.frame.origin.x + 69, y: self.icon1View.frame.origin.y, width: self.icon1View.frame.width, height: self.icon1View.frame.width)
        }, completion: nil)
        
        // icon2
        UIView.animate(withDuration: 0.5, delay:1.5/7, options: [], animations: {
            //self.icon2View.transform = CGAffineTransform(translationX: 69, y: 0)
            self.icon2View.frame = CGRect(x: self.icon2View.frame.origin.x + 69, y: self.icon2View.frame.origin.y, width: self.icon2View.frame.width, height: self.icon2View.frame.width)
        }, completion: nil)
        
        // icon3
        UIView.animate(withDuration: 0.5, delay: 2/7, options: [], animations: {
            //self.icon3View.transform = CGAffineTransform(translationX: 69, y: 0)
            self.icon3View.frame = CGRect(x: self.icon3View.frame.origin.x + 69, y: self.icon3View.frame.origin.y, width: self.icon3View.frame.width, height: self.icon3View.frame.width)
        }, completion: nil)
        
        // icon4
        UIView.animate(withDuration: 0.5, delay: 2.5/7, options: [], animations: {
            //self.icon4View.transform = CGAffineTransform(translationX: 69, y: 0)
            self.icon4View.frame = CGRect(x: self.icon4View.frame.origin.x + 69, y: self.icon4View.frame.origin.y, width: self.icon4View.frame.width, height: self.icon4View.frame.width)
        }, completion: nil)
        
        // icon5
        UIView.animate(withDuration: 0.5, delay: 2.75/7, options: [], animations: {
            //self.icon5View.transform = CGAffineTransform(translationX: 69, y: 0)
            self.icon5View.frame = CGRect(x: self.icon5View.frame.origin.x + 69, y: self.icon5View.frame.origin.y, width: self.icon5View.frame.width, height: self.icon5View.frame.width)
        }, completion: nil)
        
        // icon6
        UIView.animate(withDuration: 0.5, delay: 3/7, options: [], animations: {
            //self.icon6View.transform = CGAffineTransform(translationX: 69, y: 0)
            self.icon6View.frame = CGRect(x: self.icon6View.frame.origin.x + 69, y: self.icon6View.frame.origin.y, width: self.icon6View.frame.width, height: self.icon6View.frame.width)
        }, completion: nil)
        
        

        

        
    
    }
    
    
    func hideMenu() {
        print("hideMenu")
        perform(#selector(self.hideSideView), with: nil, afterDelay: 1.0)

        backgroundBtn.alpha = 0.0
        backgroundBtn.isUserInteractionEnabled = false
        UIView.animate(withDuration: 1.0) {
            //self.shapeView.transform = CGAffineTransform(translationX: -138, y: 0)
            self.shapeView.frame = CGRect(x: self.shapeView.frame.origin.x - 138, y: self.shapeView.frame.origin.y, width: self.shapeView.frame.width, height: self.shapeView.frame.width)

        }
        
        // profile pictur
        UIView.animate(withDuration: 0.5, delay: 2.5/7, options: [], animations: {
            //self.profileImageView.transform = CGAffineTransform(translationX: -69, y: 0)
            self.profileImageView.frame = CGRect(x: self.profileImageView.frame.origin.x - 69, y: self.profileImageView.frame.origin.y, width: self.profileImageView.frame.width, height: self.profileImageView.frame.width)
        }, completion: nil)
        
        // icon1
        UIView.animate(withDuration: 0.5, delay: 2.4/7, options: [], animations: {
            //self.icon1View.transform = CGAffineTransform(translationX: -69, y: 0)
            self.icon1View.frame = CGRect(x: self.icon1View.frame.origin.x - 69, y: self.icon1View.frame.origin.y, width: self.icon1View.frame.width, height: self.icon1View.frame.width)
        }, completion: nil)
        
        // icon2
        UIView.animate(withDuration: 0.5, delay: 2.3/7, options: [], animations: {
            //self.icon2View.transform = CGAffineTransform(translationX: -69, y: 0)
            self.icon2View.frame = CGRect(x: self.icon2View.frame.origin.x - 69, y: self.icon2View.frame.origin.y, width: self.icon2View.frame.width, height: self.icon2View.frame.width)
        }, completion: nil)
        
        // icon3
        UIView.animate(withDuration: 0.5, delay: 2/7, options: [], animations: {
            //self.icon3View.transform = CGAffineTransform(translationX: -69, y: 0)
            self.icon3View.frame = CGRect(x: self.icon3View.frame.origin.x - 69, y: self.icon3View.frame.origin.y, width: self.icon3View.frame.width, height: self.icon3View.frame.width)
        }, completion: nil)
        
        // icon4
        UIView.animate(withDuration: 0.5, delay: 1.5/7, options: [], animations: {
            //self.icon4View.transform = CGAffineTransform(translationX: -69, y: 0)
            self.icon4View.frame = CGRect(x: self.icon4View.frame.origin.x - 69, y: self.icon4View.frame.origin.y, width: self.icon4View.frame.width, height: self.icon4View.frame.width)
        }, completion: nil)
        
        // icon5
        UIView.animate(withDuration: 0.5, delay: 1/7, options: [], animations: {
            //self.icon5View.transform = CGAffineTransform(translationX: -69, y: 0)
            self.icon5View.frame = CGRect(x: self.icon5View.frame.origin.x - 69, y: self.icon5View.frame.origin.y, width: self.icon5View.frame.width, height: self.icon5View.frame.width)
        }, completion: nil)
        
        // icon6
        UIView.animate(withDuration: 0.5, delay: 0.5/7, options: [], animations: {
            //self.icon6View.transform = CGAffineTransform(translationX: -69, y: 0)
            self.icon6View.frame = CGRect(x: self.icon6View.frame.origin.x - 69, y: self.icon6View.frame.origin.y, width: self.icon6View.frame.width, height: self.icon6View.frame.width)
        }, completion: nil)
        
        
    }
    
    @objc func hideSideView() {
        sideView.alpha = 0.0
    }
    
    
}

