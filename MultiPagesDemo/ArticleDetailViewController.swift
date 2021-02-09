//
//  ArticleDetailViewController.swift
//  MultiPagesDemo
//
//  Created by Trista on 2021/2/8.
//

import UIKit

//多個畫面就需要各自建立一個不同的 UIViewController
//選擇iOS > Source > Cocoa Touch Class這個模版的檔案，新增繼承自UIViewController的子類別
class ArticleDetailViewController: UIViewController {

    //取得螢幕的尺寸
    let fullSize = UIScreen.main.bounds.size
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
        //設置底色
        self.view.backgroundColor = UIColor.white
        
        
        //建立一個作為標題的 UILabel 與返回Article頁面用的 UIButton
        //頁面標題
        let myLabel = UILabel(frame: CGRect(
          x: 0, y: 0, width: fullSize.width, height: 40))
        myLabel.center = CGPoint(
          x: fullSize.width * 0.5, y: fullSize.height * 0.08)
        myLabel.textAlignment = .center
        myLabel.text = "ArticleDetail頁"
        
        self.view.addSubview(myLabel)

        
        //建立返回Article頁面用的 UIButton
        let myButton = UIButton(frame: CGRect(
          x: 0, y: 0, width: 100, height: 30))
        myButton.setTitle("回前頁", for: .normal)
        myButton.backgroundColor = UIColor.lightGray
        myButton.addTarget(nil,
                           action:#selector(ArticleDetailViewController.goBack),
                           for: .touchUpInside)
        myButton.center = CGPoint(
            x: fullSize.width * 0.5,
            y: fullSize.height * 0.4)
        
        self.view.addSubview(myButton)
        
    }
    

    //按下退出頁面按鈕後執行的動作
    //退出頁面，使用self的方法dismissViewControllerAnimated(flag:, completion:)
    //flag：換頁動作是否加上過場動畫，true會由上向下退出頁面，false是直接替換畫面
    //completion：切換頁面完成後執行的動作，是一個閉包(closure)，可以在裡面加上自定義的程式
    @objc func goBack() {
        self.dismiss(animated: true, completion:nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
