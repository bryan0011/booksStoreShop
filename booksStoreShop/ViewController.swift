//
//  ViewController.swift
//  booksStoreShop
//
//  Created by Bryan Kuo on 2021/7/4.
//

import UIKit

class ViewController: UIViewController {
    
//    理財精選
//    Stepper
    @IBOutlet weak var practice: UIStepper!
    @IBOutlet weak var attractive: UIStepper!
    @IBOutlet weak var ghost: UIStepper!
    @IBOutlet weak var trader: UIStepper!
    
//    數量Label
    @IBOutlet weak var practiceQtyTextField: UILabel!
    @IBOutlet weak var attractiveQtyTextField: UILabel!
    @IBOutlet weak var ghostQtyTextField: UILabel!
    @IBOutlet weak var traderQtyTextField: UILabel!
    
//    圖書價格Label
    @IBOutlet weak var practicePriceTextField: UILabel!
    @IBOutlet weak var attractivePriceTextFIeld: UILabel!
    @IBOutlet weak var ghostPriceTextField: UILabel!
    @IBOutlet weak var traderPriceTextField: UILabel!
    
//    文學推薦
//    Stepper
    @IBOutlet weak var bookAStepper: UIStepper!
    @IBOutlet weak var bookBStepper: UIStepper!
    @IBOutlet weak var bookCStepper: UIStepper!
    @IBOutlet weak var bookDStepper: UIStepper!
    
//    數量Label
    @IBOutlet weak var bookAQty: UILabel!
    @IBOutlet weak var bookBQty: UILabel!
    @IBOutlet weak var bookCQty: UILabel!
    @IBOutlet weak var bookDQty: UILabel!
    
    
//    圖書價格Label
    @IBOutlet weak var bookAPriceText: UILabel!
    @IBOutlet weak var bookBPriceText: UILabel!
    @IBOutlet weak var bookCPriceText: UILabel!
    @IBOutlet weak var bookDPriceText: UILabel!
    
    
    @IBOutlet weak var totalPriceTextField: UILabel!
    
//    定義開始書本的數量
    var practiceItem:Int = 0
    var attractiveItem:Int = 0
    var ghostItem:Int = 0
    var traderItem:Int = 0
    
    var bookAItem:Int = 0
    var bookBItem:Int = 0
    var bookCItem:Int = 0
    var bookDItem:Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        設定書本單價
        practicePriceTextField.text = "350"
        attractivePriceTextFIeld.text = "250"
        ghostPriceTextField.text = "380"
        traderPriceTextField.text = "450"
        
        bookAPriceText.text = "420"
        bookBPriceText.text = "360"
        bookCPriceText.text = "1080"
        bookDPriceText.text = "980"
        
        
    }

//    設定改變購買數量
    @IBAction func changQty(_ sender: UIStepper) {
        
        practiceItem = Int(practice.value)
        practiceQtyTextField.text = String(practiceItem)
        
        attractiveItem = Int(attractive.value)
        attractiveQtyTextField.text = String(attractiveItem)
        
        ghostItem = Int(ghost.value)
        ghostQtyTextField.text = String(ghostItem)
        
        traderItem = Int(trader.value)
        traderQtyTextField.text = String(traderItem)
        
        bookAItem = Int(bookAStepper.value)
        bookAQty.text = String(bookAItem)
        
        bookBItem = Int(bookBStepper.value)
        bookBQty.text = String(bookBItem)
        
        bookCItem = Int(bookCStepper.value)
        bookCQty.text = String(bookCItem)
        
        bookDItem = Int(bookDStepper.value)
        bookDQty.text = String(bookDItem)
        
        calculate()
        
    }
    
//    設定書本數量全部歸零
    @IBAction func eraseAll(_ sender: UIButton) {
        practice.value = 0
        practiceQtyTextField.text = "0"
        
        attractive.value = 0
        attractiveQtyTextField.text = "0"
        
        ghost.value = 0
        ghostQtyTextField.text = "0"
        
        trader.value = 0
        traderQtyTextField.text = "0"
        
        bookAStepper.value = 0
        bookAQty.text = "0"
        
        bookBStepper.value = 0
        bookBQty.text = "0"
        
        bookCStepper.value = 0
        bookCQty.text = "0"
        
        bookDStepper.value = 0
        bookDQty.text = "0"
        
        totalPriceTextField.text = "0"
        
    }
    
//    定義function 計算購買總金額
    func calculate() {
        let practicePrice = Int(practicePriceTextField.text!)!
        let attractivePrice = Int(attractivePriceTextFIeld.text!)!
        let ghostPrice = Int(ghostPriceTextField.text!)!
        let traderPrice = Int(traderPriceTextField.text!)!
        
        let bookAPrice = Int(bookAPriceText.text!)!
        let bookBPrice = Int(bookBPriceText.text!)!
        let bookCPrice = Int(bookCPriceText.text!)!
        let bookDPrice = Int(bookDPriceText.text!)!
        
//        計算總金額
        let sum = practicePrice*practiceItem+attractivePrice*attractiveItem+ghostPrice*ghostItem+traderPrice*traderItem+bookAItem*bookAPrice+bookBItem*bookBPrice+bookCItem*bookCPrice+bookDItem*bookDPrice
        
//        設定總金額價格格式
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
//        設定小數點為0
        formatter.maximumFractionDigits = 0
        let moneyString = formatter.string(from: NSNumber(value: sum))
        
        totalPriceTextField.text = "\(moneyString!)"
        
    }
}

