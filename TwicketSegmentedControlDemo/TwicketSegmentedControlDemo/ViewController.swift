//
//  ViewController.swift
//  TwicketSegmentedControlDemo
//
//  Created by Pol Quintana on 17/09/16.
//  Copyright © 2016 Pol Quintana. All rights reserved.
//

import UIKit
import TwicketSegmentedControl

class ViewController: UIViewController {

    @IBOutlet weak var storyboardSegmentedControl: TwicketSegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Use Code
        let titles = ["First", "Second", "Third"]
        let frame = CGRect(x: 5, y: view.frame.height / 2 - 20, width: view.frame.width - 10, height: 40)

        let segmentedControl = TwicketSegmentedControl(frame: frame)
        segmentedControl.setSegmentItems(titles)
        segmentedControl.delegate = self
        view.addSubview(segmentedControl)
        
        // Use Storyboard
        let titles2 = ["视频源", "场景", "图片"]
        storyboardSegmentedControl.setSegmentItems(titles2)
        storyboardSegmentedControl.delegate = self
    }
}

extension ViewController: TwicketSegmentedControlDelegate {
    
    func segmentedControl(_ segmentedControl: TwicketSegmentedControl, didSelectItemAt index: Int) {
        print("Selected index: \(index)")
    }
}
