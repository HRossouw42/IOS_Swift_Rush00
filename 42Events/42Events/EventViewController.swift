//
//  ViewController.swift
//  42Events
//
//  Created by Samantha HILLEBRAND on 2019/10/12.
//  Copyright © 2019 Rush00Team. All rights reserved.
//

import UIKit

class EventViewController: UIViewController {

    @IBOutlet var name: UILabel!
    @IBOutlet var nSub: UITextField!
    @IBOutlet var mSub: UITextField!
    @IBOutlet var desc: UITextView!
    @IBOutlet var date: UITextField!
    @IBOutlet var bTim: UITextField!
    @IBOutlet var eTim: UITextField!
    @IBOutlet var dura: UITextField!
    @IBOutlet var locn: UITextField!
    @IBOutlet var kind: UITextField!
    
    var data: CellData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        name.text = data?.name
        name.isUserInteractionEnabled = false
        nSub.text = data?.nSub
        nSub.isUserInteractionEnabled = false
        mSub.text = data?.mSub
        mSub.isUserInteractionEnabled = false
        desc.text = data?.desc
        desc.isUserInteractionEnabled = false
        date.text = data?.date
        date.isUserInteractionEnabled = false
        bTim.text = data?.bTim
        bTim.isUserInteractionEnabled = false
        eTim.text = data?.eTim
        eTim.isUserInteractionEnabled = false
        dura.text = data?.dura
        dura.isUserInteractionEnabled = false
        locn.text = data?.locn
        locn.isUserInteractionEnabled = false
        kind.text = data?.kind
        kind.isUserInteractionEnabled = false
    }


}

