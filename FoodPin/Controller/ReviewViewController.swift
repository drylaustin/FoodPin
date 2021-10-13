//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by DARYL AGUSTIN on 9/15/21.
//

import UIKit

class ReviewViewController: UIViewController {
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var rateButtons: [UIButton]!

    var restaurant = Restaurant()

    override func viewDidLoad() {
        super.viewDidLoad()

        backgroundImageView.image = UIImage(data: restaurant.image)
        
         let blurEffect = UIBlurEffect(style: .dark)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            blurEffectView.frame = view.bounds
            backgroundImageView.addSubview(blurEffectView)
        
        let moveRightTransform = CGAffineTransform.init(translationX: 600, y: 0)
        let scaleUpTransform = CGAffineTransform.init(scaleX: 5.0, y: 5.0)
        let moveScaleTransform = scaleUpTransform.concatenating(moveRightTransform)

        // Make the button invisible and move off the screen
        for rateButton in rateButtons {
            rateButton.transform = moveScaleTransform
            rateButton.alpha = 0
        
      
        }

       
        }
    override func viewWillAppear(_ animated: Bool) {
        
        for index in 0...4 {
            UIView.animate(withDuration: 0.4, delay: (0.1 + 0.05 * Double(index)), options: [], animations: {
                self.rateButtons[index].alpha = 1.0
                self.rateButtons[index].transform = .identity
            }, completion: nil)
        }

//        UIView.animate(withDuration: 0.4, delay: 0.1, options: [], animations: {
//                self.rateButtons[0].alpha = 1.0
//                self.rateButtons[0].transform = .identity
//            }, completion: nil)
//
//            UIView.animate(withDuration: 0.4, delay: 0.15, options: [], animations: {
//                self.rateButtons[1].alpha = 1.0
//                self.rateButtons[1].transform = .identity
//            }, completion: nil)
//
//            UIView.animate(withDuration: 0.4, delay: 0.2, options: [], animations: {
//                self.rateButtons[2].alpha = 1.0
//                self.rateButtons[2].transform = .identity
//            }, completion: nil)
//
//            UIView.animate(withDuration: 0.4, delay: 0.25, options: [], animations: {
//                self.rateButtons[3].alpha = 1.0
//                self.rateButtons[3].transform = .identity
//            }, completion: nil)
//
//            UIView.animate(withDuration: 0.4, delay: 0.3, options: [], animations: {
//                self.rateButtons[4].alpha = 1.0
//                self.rateButtons[4].transform = .identity
//            }, completion: nil)
//
//        }

}
}
