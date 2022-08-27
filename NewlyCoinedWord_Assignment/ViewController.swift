//
//  ViewController.swift
//  NewlyCoinedWord_Assignment
//
//  Created by Mac Pro 15 on 2022/08/27.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var newlyCoinedWordTextField: UITextField!
    @IBOutlet weak var newlyCoinedWordSearchButton: UIButton!
    @IBOutlet weak var newlyCoinedWordHashTagButton1: UIButton!
    @IBOutlet weak var newlyCoinedWordHashTagButton2: UIButton!
    @IBOutlet weak var newlyCoinedWordHashTagButton3: UIButton!
    @IBOutlet weak var newlyCoinedWordHashTagButton4: UIButton!
    
    @IBOutlet var newlyCoinedWordHashTagButton: [UIButton]!
    
    
    @IBOutlet weak var resultImageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    var newlyCoinedWordArray = ["쫌쫌따리", "억텐", "스불재", "좋댓구알", "어쩔티비", "갓생", "점메추", "다꾸", "킹받다", "군싹"]
    var newlyCoinedWordMeaningArray : [String: String] = ["쫌쫌따리": "아주 조금씩 하찮은 양을 모으는 모습", "억텐": "억지 텐션의 줄임말. 억지로 텐션을 올려서 발라하게 행동할 때", "스불재": "스스로 불러온 재앙의 줄임말. 자신이 계획한 일로 자신이 고통을 받을 때 씀", "좋댓구알": "좋아요, 댓글, 구독, 알림 설정.", "어쩔티비": "어쩌라고 가서 TV나 봐라라는 뜻. '저쩔티비'나 '어쩔'뒤에 전자제품을 붙여 맞받아치면 됨.", "갓생": "부지런하고 열심히 사는 사람에게 쓰는 말", "점메추": "점심 메뉴 추천", "다꾸": "다이어리 꾸미. 자매품으로 위꾸(위장 꾸미기=먹기), 뇌꾸(뇌 꾸미기=공부)등이 있음", "킹받다": "열받다라는 뜻. 킹(King)을 붙여 강조함. 자매품으로 같은 뜻인 킹받드라슈가 있음.", "군싹": "군침이 싹도네의 줄임말로 뽀로로 루피짤과 세트로 유명해졌음"]
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        textFieldAttribute()
        searchButtonAttribute()
        hashTagButtonAttribute()
        imageViewAttribute()
        resultLabelAttribute()
    }
    
    func textFieldAttribute() {
        newlyCoinedWordTextField.layer.borderWidth = 3
        newlyCoinedWordTextField.backgroundColor = .clear
        newlyCoinedWordTextField.layer.borderColor = UIColor.black.cgColor
        newlyCoinedWordTextField.textAlignment = .left
        newlyCoinedWordTextField.placeholder = "신조어를 입력해주세요"
        newlyCoinedWordTextField.textColor = .black
    }
    func searchButtonAttribute() {
        newlyCoinedWordSearchButton.backgroundColor = .black
        newlyCoinedWordSearchButton.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        newlyCoinedWordSearchButton.tintColor = .white
    }
    func hashTagButtonAttribute() {
        for item in newlyCoinedWordHashTagButton {
            item.layer.borderWidth = 1
            item.layer.borderColor = UIColor.black.cgColor
            item.layer.cornerRadius = 10
            item.setTitleColor(.black, for: .normal)
            item.setTitle(newlyCoinedWordArray[1], for: .normal)
        }
    }
    func imageViewAttribute() {
        resultImageView.image = UIImage(named: "background")
        resultImageView.contentMode = .scaleToFill
    }
    func resultLabelAttribute() {
        resultLabel.textColor = .black
        resultLabel.textAlignment = .center
        resultLabel.text = "신조어를 검색해보세요!"
    }
    
    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func newlyCoinedWordSearchButtonClicked(_ sender: UIButton) {
        resultLabel.text = newlyCoinedWordTextField.text
    }
    
    
    

}

