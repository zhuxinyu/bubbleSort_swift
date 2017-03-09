//
//  ViewController.swift
//  BubbleSort
//
//  Created by zhuxinyu on 2017/3/9.
//  Copyright © 2017年 Xyz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var originalDataLabel: UILabel!
    @IBOutlet weak var sortingTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let ary = [2, 3, 4, 5, 15, 19, 26, 27, 36, 38, 44, 46, 47, 48, 50]
        self.bubbleSort(dataAry: ary)
        
        self.originalDataLabel.text = String(describing: ary)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func bubbleSort(dataAry:Array<NSInteger>) {
        var interstingAry = [dataAry]
        var caculator = 0
        var numberAry = dataAry
        let count:NSInteger = numberAry.count
        for i in 0..<count-1 {
            for j in 0..<count-1-i {
                caculator = caculator + 1
                var tempObj = numberAry[j]
                if( numberAry[j] < numberAry[j+1]){
                    tempObj = numberAry[j+1]
                    numberAry[j+1] = numberAry[j]
                    numberAry[j] = tempObj
                }
                interstingAry.append(numberAry)
            }
        }
        self.sortingTextView.text = String(describing: interstingAry) + "\n" + "共计\(caculator)次"
    }
    
    
}


