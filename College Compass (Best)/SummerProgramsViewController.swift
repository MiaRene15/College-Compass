//
//  SummerProgramsViewController.swift
//  College Compass (Best)
//
//  Created by Apple on 6/14/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import SafariServices

class SummerProgramsViewController: UIViewController {

   
    @IBAction func learnButtonTapped(_ sender: SAButton) {
        showSafariVC(for: headlines[myIndex].URL)
    }
    func showSafariVC(for url: String) {
        guard let url = URL(string: url) else {
            return
        }
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true, completion: nil)
    }
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = headlines[jessIndex].title
        descLabel.text = headlines[jessIndex].text
    }
    
}
