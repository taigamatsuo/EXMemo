//
//  DetailViewController.swift
//  TestMemo
//
//  Created by 松尾大雅 on 2019/10/13.
//  Copyright © 2019 litech. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var memoTextView: UITextView!

    var selectedRow:Int!
    var selectedMemo : String!

    override func viewDidLoad() {
        super.viewDidLoad()

       memoTextView.text = selectedMemo
    }

    @IBAction func deleteMemo(_ sender: Any) {
        let ud = UserDefaults.standard
        if ud.array(forKey: "memoArray") != nil{
            var saveMemoArray = ud.array(forKey: "memoArray") as![String]
            saveMemoArray.remove(at: selectedRow)
            ud.set(saveMemoArray, forKey: "memoArray" )
            ud.synchronize()
            //画面遷移

            self.navigationController?.popViewController(animated: true)
        }
    }
}
