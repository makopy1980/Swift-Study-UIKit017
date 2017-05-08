//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Private Fields
    
    private var navBarLeftButton: UIBarButtonItem!
    private var navBarRightButton: UIBarButtonItem!
    
    // MARK: - View Lifecycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Viewの設定
        self.setupView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Private & Internal Methods
    
    /// Viewの設定
    private func setupView() {
        self.view.backgroundColor = UIColor.cyan
        
        // NavigationBarの設定
        self.setupNavigationBar()
    }
    
    /// NavigationBarの設定
    private func setupNavigationBar() {
        // タイトル設定
        self.title = "なびげーしょん"
        // NavigationBarボタン設定
        self.setupNavBarButtons()
    }
    
    /// NavigationBarボタン設定
    private func setupNavBarButtons() {
        // 左ボタン設定
        self.setupNavBarLeftButton()
        // 右ボタン設定
        self.setupNavBarRightButton()
    }
    
    /// NavigationBar左ボタン設定
    private func setupNavBarLeftButton() {
        self.navBarLeftButton = UIBarButtonItem(barButtonSystemItem: .add,
                                                target: self,
                                                action: #selector(onNavBarButtonTapped(sender:)))
        navBarLeftButton.tag = 1
        
        self.navigationItem.leftBarButtonItem = navBarLeftButton
    }
    
    /// NavigationBar右ボタン設定
    private func setupNavBarRightButton() {
        self.navBarRightButton = UIBarButtonItem(title: "RightBtn",
                                                 style: .plain,
                                                 target: self,
                                                 action: #selector(onNavBarButtonTapped(sender:)))
        navBarRightButton.tag = 2
        
        self.navigationItem.rightBarButtonItem = navBarRightButton
    }
    
    /// NavigationBarボタンタップイベント
    internal func onNavBarButtonTapped(sender: UIBarButtonItem) {
        switch(sender.tag) {
        case 1:
            self.view.backgroundColor = UIColor.blue
            break
        case 2:
            self.view.backgroundColor = UIColor.red
            break
        default:
            print("Error!")
            break
        }
    }
}

