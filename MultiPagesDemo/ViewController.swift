//
//  ViewController.swift
//  MultiPagesDemo
//
//  Created by Trista on 2021/2/8.
//

import UIKit

class ViewController: UIViewController {

    //取得螢幕的尺寸
    let fullSize = UIScreen.main.bounds.size
    
    
    //viewDidLoad()：最先被執行，在 View 被載入時，不論切換退出這個頁面幾次，一個頁面只會執行一次viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        //設置底色
        self.view.backgroundColor = UIColor.white
        
        
        //建立一個作為標題的 UILabel 與兩個切換頁面用的 UIButton
        //頁面標題
        let myLabel = UILabel(frame: CGRect(
          x: 0, y: 0, width: fullSize.width, height: 40))
        myLabel.center = CGPoint(
          x: fullSize.width * 0.5, y: fullSize.height * 0.08)
        myLabel.textAlignment = .center
        myLabel.text = "首頁"
        
        self.view.addSubview(myLabel)

        
        //建立前往 Article 頁面的 UIButton
        var myButton = UIButton(frame: CGRect(
          x: 0, y: 0, width: 100, height: 30))
        myButton.setTitle("Article", for: .normal)
        myButton.backgroundColor = UIColor.lightGray
        myButton.addTarget(nil,
                           action:#selector(ViewController.goArticle),
                           for: .touchUpInside)
        myButton.center = CGPoint(
            x: fullSize.width * 0.5,
            y: fullSize.height * 0.2)
        
        self.view.addSubview(myButton)

        
        //建立前往 Intro 頁面的 UIButton
        myButton = UIButton(frame: CGRect(
          x: 0, y: 0, width: 100, height: 30))
        myButton.setTitle("Intro", for: .normal)
        myButton.backgroundColor = UIColor.lightGray
        myButton.addTarget(nil,
                           action: #selector(ViewController.goIntro),
                           for: .touchUpInside)
        myButton.center = CGPoint(
            x: fullSize.width * 0.5,
            y: fullSize.height * 0.4)
        
        self.view.addSubview(myButton)
        
    }
    
    
    //viewWillAppear()：在viewDidLoad()之後被執行，在 View 要被呈現前，每次切換到這個頁面時都會執行。每次進入一個頁面都需要更新資訊，更新資訊的動作就應該放在viewWillAppear()裡而不是viewDidLoad()內
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        print("viewWillAppear")
    }
    

    //viewDidAppear()：在viewWillAppear()之後被執行，在 View 呈現後，每次切換到這個頁面時都會執行
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        print("viewDidAppear")
    }
    
    
    //viewWillDisappear()：在 View 要結束前被執行，每次要切換到別頁或是退出這個頁面時都會執行
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        print("viewWillDisappear")
    }
    
    
    //viewDidDisappear()：執在 View 完全結束後被執行，每次要切換到別頁或是退出這個頁面時都會執行
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        print("viewDidDisappear")
    }
    
    
    //按下按鈕執行動作的方法
    //切換頁面使用self的方法presentViewController(viewControllerToPresent:, animated:, completion:)
    //viewControllerToPresent：要切換前往的頁面，要交棒給予的 UIViewController，分別前往ArticleViewController()及IntroViewController()
    //animated：換頁動作是否加上過場動畫，true會由下向上滑出新的頁面，false是直接替換畫面
    //completion：切換頁面完成後執行的動作，是一個閉包(closure)，可以在裡面加上自定義的程式
    @objc func goArticle() {
        self.present(ArticleViewController(), animated: true, completion: nil)
    }

    @objc func goIntro() {
        self.present(IntroViewController(), animated: true, completion: nil)
    }
    
}

