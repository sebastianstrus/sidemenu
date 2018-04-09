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
        profileImageView.frame = CGRect(x: profileImageView.frame.origin.x + 69, y: profileImageView.frame.origin.y, width: profileImageView.frame.width, height: profileImageView.frame.height)
        
        icon1View.image = UIImage(named:"home_icon")?.withRenderingMode(.alwaysTemplate)
        icon1View.tintColor = UIColor.white
        icon1View.frame = CGRect(x: icon1View.frame.origin.x + 69, y: icon1View.frame.origin.y, width: icon1View.frame.width, height: icon1View.frame.height)
        
        icon2View.image = UIImage(named:"profile_icon")?.withRenderingMode(.alwaysTemplate)
        icon2View.tintColor = UIColor.white
        icon2View.frame = CGRect(x: icon2View.frame.origin.x + 69, y: icon2View.frame.origin.y, width: icon2View.frame.width, height: icon2View.frame.height)
        
        icon3View.image = UIImage(named:"map_icon")?.withRenderingMode(.alwaysTemplate)
        icon3View.tintColor = UIColor.white
        icon3View.frame = CGRect(x: icon3View.frame.origin.x + 69, y: icon3View.frame.origin.y, width: icon3View.frame.width, height: icon3View.frame.height)
        
        icon4View.image = UIImage(named:"add_icon")?.withRenderingMode(.alwaysTemplate)
        icon4View.tintColor = UIColor.white
        icon4View.frame = CGRect(x: icon4View.frame.origin.x + 69, y: icon4View.frame.origin.y, width: icon4View.frame.width, height: icon4View.frame.height)
        
        icon5View.image = UIImage(named:"list_icon")?.withRenderingMode(.alwaysTemplate)
        icon5View.tintColor = UIColor.white
        icon5View.frame = CGRect(x: icon5View.frame.origin.x + 69, y: icon5View.frame.origin.y, width: icon5View.frame.width, height: icon5View.frame.height)
        
        icon6View.image = UIImage(named:"settings_icon")?.withRenderingMode(.alwaysTemplate)
        icon6View.tintColor = UIColor.white
        icon6View.frame = CGRect(x: icon6View.frame.origin.x + 69, y: icon6View.frame.origin.y, width: icon6View.frame.width, height: icon6View.frame.height)
        
        
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
            self.shapeView.frame = CGRect(x: self.shapeView.frame.origin.x + 138, y: self.shapeView.frame.origin.y, width: self.shapeView.frame.width, height: self.shapeView.frame.height)
        }, completion: nil)
        
        // profile pictur
        UIView.animate(withDuration: 0.5, delay: 1/7, options: [], animations: {
            self.profileImageView.frame = CGRect(x: self.profileImageView.frame.origin.x + 69, y: self.profileImageView.frame.origin.y, width: self.profileImageView.frame.width, height: self.profileImageView.frame.height)
        }, completion: nil)
        
        // icon1
        UIView.animate(withDuration: 0.5, delay: 1.3/7, options: [], animations: {
            self.icon1View.frame = CGRect(x: self.icon1View.frame.origin.x + 69, y: self.icon1View.frame.origin.y, width: self.icon1View.frame.width, height: self.icon1View.frame.height)
        }, completion: nil)
        
        // icon2
        UIView.animate(withDuration: 0.5, delay:1.5/7, options: [], animations: {
            self.icon2View.frame = CGRect(x: self.icon2View.frame.origin.x + 69, y: self.icon2View.frame.origin.y, width: self.icon2View.frame.width, height: self.icon2View.frame.height)
        }, completion: nil)
        
        // icon3
        UIView.animate(withDuration: 0.5, delay: 2/7, options: [], animations: {
            self.icon3View.frame = CGRect(x: self.icon3View.frame.origin.x + 69, y: self.icon3View.frame.origin.y, width: self.icon3View.frame.width, height: self.icon3View.frame.height)
        }, completion: nil)
        
        // icon4
        UIView.animate(withDuration: 0.5, delay: 2.5/7, options: [], animations: {
            self.icon4View.frame = CGRect(x: self.icon4View.frame.origin.x + 69, y: self.icon4View.frame.origin.y, width: self.icon4View.frame.width, height: self.icon4View.frame.height)
        }, completion: nil)
        
        // icon5
        UIView.animate(withDuration: 0.5, delay: 2.75/7, options: [], animations: {
            self.icon5View.frame = CGRect(x: self.icon5View.frame.origin.x + 69, y: self.icon5View.frame.origin.y, width: self.icon5View.frame.width, height: self.icon5View.frame.height)
        }, completion: nil)
        
        // icon6
        UIView.animate(withDuration: 0.5, delay: 3/7, options: [], animations: {
            self.icon6View.frame = CGRect(x: self.icon6View.frame.origin.x + 69, y: self.icon6View.frame.origin.y, width: self.icon6View.frame.width, height: self.icon6View.frame.height)
        }, completion: nil)
        
        

        

        
    
    }
    
    
    func hideMenu() {
        print("hideMenu")
        perform(#selector(self.hideSideView), with: nil, afterDelay: 1.0)

        backgroundBtn.alpha = 0.0
        backgroundBtn.isUserInteractionEnabled = false
        UIView.animate(withDuration: 1.0) {

            self.shapeView.frame = CGRect(x: self.shapeView.frame.origin.x + -138, y: self.shapeView.frame.origin.y, width: self.shapeView.frame.width, height: self.shapeView.frame.height)
        }
        
        // profile pictur
        UIView.animate(withDuration: 0.5, delay: 3.0/7, options: [], animations: {
            self.profileImageView.frame = CGRect(x: self.profileImageView.frame.origin.x - 69, y: self.profileImageView.frame.origin.y, width: self.profileImageView.frame.width, height: self.profileImageView.frame.height)
        }, completion: nil)
        
        // icon1
        UIView.animate(withDuration: 0.5, delay: 2.75/7, options: [], animations: {
            self.icon1View.frame = CGRect(x: self.icon1View.frame.origin.x - 69, y: self.icon1View.frame.origin.y, width: self.icon1View.frame.width, height: self.icon1View.frame.height)
        }, completion: nil)
        
        // icon2
        UIView.animate(withDuration: 0.5, delay: 2.5/7, options: [], animations: {
            self.icon2View.frame = CGRect(x: self.icon2View.frame.origin.x - 69, y: self.icon2View.frame.origin.y, width: self.icon2View.frame.width, height: self.icon2View.frame.height)
        }, completion: nil)
        
        // icon3
        UIView.animate(withDuration: 0.5, delay: 2/7, options: [], animations: {
            self.icon3View.frame = CGRect(x: self.icon3View.frame.origin.x - 69, y: self.icon3View.frame.origin.y, width: self.icon3View.frame.width, height: self.icon3View.frame.height)
        }, completion: nil)
        
        // icon4
        UIView.animate(withDuration: 0.5, delay: 1.5/7, options: [], animations: {
            self.icon4View.frame = CGRect(x: self.icon4View.frame.origin.x - 69, y: self.icon4View.frame.origin.y, width: self.icon4View.frame.width, height: self.icon4View.frame.height)
        }, completion: nil)
        
        // icon5
        UIView.animate(withDuration: 0.5, delay: 1/7, options: [], animations: {
            self.icon5View.frame = CGRect(x: self.icon5View.frame.origin.x - 69, y: self.icon5View.frame.origin.y, width: self.icon5View.frame.width, height: self.icon5View.frame.height)
        }, completion: nil)
        
        // icon6
        UIView.animate(withDuration: 0.5, delay: 0, options: [], animations: {
            self.icon6View.frame = CGRect(x: self.icon6View.frame.origin.x - 69, y: self.icon6View.frame.origin.y, width: self.icon6View.frame.width, height: self.icon6View.frame.height)
        }, completion: nil)
        
        
    }
    
    @objc func hideSideView() {
        sideView.alpha = 0.0
    }
    
    
}

