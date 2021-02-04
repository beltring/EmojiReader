//
//  NewEmojiTableViewTableViewController.swift
//  EmojiReader
//
//  Created by Pavel Boltromyuk on 2/4/21.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {

    var emoji = Emoji(emoji: "", name: "", description: "", isFavourite: false)
    
    @IBOutlet weak var emogiTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateSaveButtonChange()
        updateUI()
    }

    @IBAction func textChange(_ sender: UITextField) {
        updateSaveButtonChange()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard segue.identifier == "saveSegue" else { return }
        
        let emojiText = emogiTextField.text ?? ""
        let nameText = nameTextField.text ?? ""
        let descriptionText = descriptionTextField.text ?? ""
        
        self.emoji = Emoji(emoji: emojiText, name: nameText, description: descriptionText, isFavourite: self.emoji.isFavourite)
        
    }
    
    private func updateSaveButtonChange(){
        let emojiText = emogiTextField.text ?? ""
        let nameText = nameTextField.text ?? ""
        let descriptionText = descriptionTextField.text ?? ""
        
        saveButton.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty
    }
    
    private func updateUI(){
        emogiTextField.text = emoji.emoji
        nameTextField.text = emoji.name
        descriptionTextField.text = emoji.description
    }
}
