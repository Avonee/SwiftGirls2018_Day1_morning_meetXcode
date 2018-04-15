//
//  ViewController.swift
//  dayswift
//
//  Created by 鄭雅方 on 2018/4/14.
//  Copyright © 2018年 鄭雅方. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showLabel: UILabel!
    
    @IBOutlet weak var toNextButton: UIButton!
    
  
    var myName = "Avon"
    
    @IBAction func toNextClick(_ sender: Any) {
        
        // 功能一：按鈕後變色
//        toNextButton.backgroundColor = UIColor.red
        
        // 功能二： 按鈕藍色紅色變換 寫法一
//        if toNextButton.backgroundColor == UIColor.blue {
//            toNextButton.backgroundColor = UIColor.red
//
//        }else{
//            toNextButton.backgroundColor = UIColor.blue
//        }
        
        // 功能二： 按鈕藍色紅色變換 寫法二
        toNextButton.backgroundColor == UIColor.blue ? ( toNextButton.backgroundColor = UIColor.red) : (toNextButton.backgroundColor = UIColor.blue)
        
        // 執行換頁
        performSegue(withIdentifier: "toNext", sender: self)
        
        print("按到我了！！！！")
        print("我的名字叫做 \(myName)")
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 執行換頁呼叫的function
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNext"{
            _ = segue.destination as! ViewNext
            
        }
    }
   

}

