//
//  ViewController.swift
//  tableProject
//
//  Created by 星みちる on 2019/07/16.
//  Copyright © 2019 星みちる. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    

    
    @IBOutlet weak var tableView: UITableView!
    
    var fruits = ["cherry","banana","apple","melon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //画面の部品と設定をくっつけるおまじない
    tableView.dataSource = self
    tableView.delegate = self
                
    }
    


}

//ViewControllerをテーブルが扱えるように拡張する
extension ViewController:UITableViewDataSource,UITableViewDelegate{
    

    //テーブルビューの行数の設定
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return fruits.count
}

    //テーブルビューに表示する内容を設定する
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    //表示する行番号のセルを取得する
    //(セルの名前と、行番号で取得）
    let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath)
    //↑最初に設定したセルの名前を書いて呼び寄せる
    //取得したセルに表示する文字を設定する
    cell.textLabel?.text = fruits[indexPath.row]
    
    //完成したセルを返す
    return cell
}

}

