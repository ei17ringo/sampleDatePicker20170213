//
//  ViewController.swift
//  sampleDatePicker
//
//  Created by Eriko Ichinohe on 2017/03/08.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // 選択された日付が変わったとき発動
    @IBAction func dateChange(_ sender: UIDatePicker) {
        
        print(sender.date)
        
        //フォーマットを設定（文字列に変換）
        let df = DateFormatter()
        df.dateFormat = "yyyy/MM/dd"
        
        print(df.string(from: sender.date))
        
        
        // P.106 Switch文
//        var n = 0
//        switch n {
//        case 0:
//            print("0です")
//        default:
//            print("どれでもない数字")
//        }
 
        // TODO:3月を選んだときはMarch,4月を選んだときApril,5月を選んだときはMay,それ以外の月を選んだときは、Otherとprint文でデバッグエリアに表示してください。
        
        df.dateFormat = "MM"
        var month = df.string(from: sender.date)
        
        switch month {
        case "04":
            print("April")
            
        default:
            print("")
            
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

