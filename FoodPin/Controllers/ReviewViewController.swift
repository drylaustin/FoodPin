//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by DARYL AGUSTIN on 7/18/23.
//

import UIKit

class ReviewViewController: UIViewController {
    
    
    @IBOutlet var rateButtons: [UIButton]! {
        didSet {
            rateButtons.forEach { button in
                button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .largeTitle)
                
            }
        }
    }
    
   
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var closeButton: UIButton!
    var restaurant = Restaurant()

    override func viewDidLoad() {
        super.viewDidLoad()

        backgroundImageView.image = UIImage(data: restaurant.image)
        
        // Blur background
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        let moveRightTransform = CGAffineTransform.init(translationX: 600, y: 0)
        let scaleUpTransform = CGAffineTransform.init(scaleX: 5.0, y: 5.0)
        let moveScaleTransform = scaleUpTransform.concatenating(moveRightTransform)
        let moveUpTransform = CGAffineTransform.init(translationX: 0, y: -600)
        
        // Make the button invisible
        for rateButton in rateButtons {
            rateButton.transform = moveScaleTransform
            rateButton.alpha = 0
        }
        
        closeButton.transform = moveUpTransform
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        for index in 0...4 {
            UIView.animate(withDuration: 0.4, delay: (0.1 + 0.05 * Double(index)), options: [], animations: {
                self.rateButtons[index].alpha = 1.0
                self.rateButtons[index].transform = .identity
            }, completion: nil)
        }
        
        // Animate the close button
        UIView.animate(withDuration: 0.4, delay: 0.1, options: [], animations: {
            self.closeButton.transform = .identity
        }, completion: nil)
    }
    
        
//        UIView.animate(withDuration: 0.4, delay: 0.1, options: [], animations:
//        {
//        self.rateButtons[0].alpha = 1.0
//        self.rateButtons[0].transform = .identity
//        }, completion: nil)
//        UIView.animate(withDuration: 0.4, delay: 0.15, options: [], animations: {
//        self.rateButtons[1].alpha = 1.0
//        self.rateButtons[1].transform = .identity
//        }, completion: nil)
//        UIView.animate(withDuration: 0.4, delay: 0.2, options: [], animations:
//        {
//        self.rateButtons[2].alpha = 1.0
//        self.rateButtons[2].transform = .identity
//        }, completion: nil)
//        UIView.animate(withDuration: 0.4, delay: 0.25, options: [], animations: {
//        self.rateButtons[3].alpha = 1.0
//        self.rateButtons[3].transform = .identity
//        }, completion: nil)
//        UIView.animate(withDuration: 0.4, delay: 0.3, options: [], animations:
//        {
//        self.rateButtons[4].alpha = 1.0
//        self.rateButtons[4].transform = .identity
//        }, completion: nil)
//        }
//
//

}
