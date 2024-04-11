//
//  AddStudentViewController.swift
//  crud
//
//  Created by vikram jaiswal on 12/03/24.
//

import UIKit

class AddStudentViewController: UIViewController {

    @IBOutlet weak var txtSchool: UITextField!
    @IBOutlet weak var txtStd: UITextField!
    @IBOutlet weak var txtName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onClickAdd(_ sender: Any) {
        if let name = txtName.text,
           let std = txtStd.text,
           let school = txtSchool.text
        {
            let newStudent = Student(context: DBManager.share.context)
            newStudent.name = name
            newStudent.std = std
            newStudent.school = school
            
            DBManager.share.saveContext()
        }
    }
    
}
