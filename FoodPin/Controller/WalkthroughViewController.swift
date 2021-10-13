//
//  WalkThroughViewController.swift
//  FoodPin
//
//  Created by DARYL AGUSTIN on 9/19/21.
//

import UIKit

class WalkthroughViewController: UIViewController {
    
    var walkthroughPageViewController: WalkthroughPageViewController?
    
    @IBAction func skipButtonTapped(sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var nextButton: UIButton! {
        didSet {
            nextButton.layer.cornerRadius = 25.0
            nextButton.layer.masksToBounds = true
        }
    }
    @IBOutlet var skipButton: UIButton!
    
    @IBAction func nextButtonTapped(sender: UIButton) {

        if let index = walkthroughPageViewController?.currentIndex {
            switch index {
            case 0...1:
                walkthroughPageViewController?.forwardPage()

            case 2:
                dismiss(animated: true, completion: nil)

            default: break

            }
        }

        updateUI()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination
        if let pageViewController = destination as? WalkthroughPageViewController {
                walkthroughPageViewController = pageViewController
                walkthroughPageViewController?.walkthroughDelegate = self
        }
    }
    
    

    
    func updateUI() {

        if let index = walkthroughPageViewController?.currentIndex {
            switch index {
            case 0...1:
                nextButton.setTitle("NEXT", for: .normal)
                skipButton.isHidden = false
            case 2:
                nextButton.setTitle("GET STARTED", for: .normal)
                skipButton.isHidden = true
            default: break
            }

            pageControl.currentPage = index
        }

    }
    
    
    
    

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  
}

extension WalkthroughViewController: WalkthroughPageViewControllerDelegate {

    func didUpdatePageIndex(currentIndex: Int) {
        updateUI()
    }

}
