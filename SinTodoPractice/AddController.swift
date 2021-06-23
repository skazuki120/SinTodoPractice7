//
//  AddController.swift
//  SinTodoPractice
//
//  Created by Daichi Sasayama on 2021/05/20.
//

import UIKit

var TodoKobetsunonakami = [String]()

class AddController: UIViewController {
    @IBOutlet weak var TodoTextField: UITextField!
    
    @IBAction func TodoAddButton(sender:Any){
        //変数に入力内容を入れる
        TodoKobetsunonakami.append(TodoTextField.text!)
        //追加ボタンを押したらフィールドを空にする
        TodoTextField.text = ""
        //変数の中身をUDに追加
        UserDefaults.standard.set(TodoKobetsunonakami,forKey: "TodoList")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
