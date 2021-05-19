//
//  EditorViewController.swift
//  TakeNotes
//
//  Created by Fisch on 19/5/21.
//

import UIKit

class EditorViewController: UIViewController {

    @IBOutlet weak var content: UITextView!
    @IBOutlet weak var titleField: UITextField!
    
    var noteTitle:String = ""
    var noteContent:String = ""
    var notesCache:Dictionary<String,String> = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(UserDefaults.standard.dictionary(forKey: "Notes") != nil){
            notesCache = UserDefaults.standard.dictionary(forKey: "Notes") as! Dictionary<String,String>
        }
        // Do any additional setup after loading the view.
    }

    @IBAction func saveTitle(_ sender: UITextField) {
        noteTitle = sender.text ?? "default title"
    }
    
    
    @IBAction func saveNotes(_ sender: Any) {
        noteContent = content.text
        notesCache[noteTitle] = noteContent
        UserDefaults.standard.set(notesCache, forKey: "Notes")
        let vc = self.storyboard?.instantiateViewController(identifier:"main") as! NotesTableViewController
        self.present(vc, animated: true)
    }
    
    

}
