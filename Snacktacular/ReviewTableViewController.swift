//
//  ReviewTableViewController.swift
//  Snacktacular
//
//  Created by Kathryn Tatum on 4/19/20.
//  Copyright © 2020 John Gallaugher. All rights reserved.
//

import UIKit

class ReviewTableViewController: UITableViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var postedByLabel: UILabel!
    @IBOutlet weak var reviewTitle: UITextField!
    @IBOutlet weak var reviewDateLabel: UILabel!
    @IBOutlet weak var reviewView: UITextView!
    @IBOutlet weak var cancelBarButton: UIBarButtonItem!
    @IBOutlet weak var saveBarButton: UIBarButtonItem!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var buttonsBackgroundView: UIView!
    
    @IBOutlet var startButtonCollection: [UIButton]!
    
    var rating = 0 {
        didSet {
            for starButton in startButtonCollection {
                let image = UIImage(named: (starButton.tag < rating ? "star-filled": "star-empty"))
                starButton.setImage(image, for: .normal)
            }
            print(">>> new Rating \(rating)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //hide keyboard if tap outside field
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
    }
    
    func leaveViewController() {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    @IBAction func starButtonPressed(_ sender: UIButton) {
        rating = sender.tag + 1
    }
    
    @IBAction func returnTitleDonePressed(_ sender: UITextField) {
    }
    @IBAction func reviewTitleChanged(_ sender: UITextField) {
    }
    @IBAction func deleteButtonPressed(_ sender: UIButton) {
    }
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        leaveViewController()
    }
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
    }
    
}
