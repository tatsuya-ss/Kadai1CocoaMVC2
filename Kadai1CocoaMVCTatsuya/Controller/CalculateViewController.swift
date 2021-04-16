
import UIKit

class CalculateViewController: UIViewController {
    private var calculateModel: CalculateModel? {
        didSet {
            registerModel()
        }
    }
    
    private(set) var calculateView: CalculateView = CalculateView()
    

    override func loadView() {
        view = calculateView
        print("Viewが追加されました")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateModel = CalculateModel()
        calculateModel?.delegate = self
    }
    
    private func registerModel() {
        calculateView.calculateButton.addTarget(self,
                                                action: #selector(onCalculateButtonTapped),
                                                for: .touchUpInside)
    }
    
    @objc private func onCalculateButtonTapped() {
        let numberArray  = [
            Int(calculateView.textField1.text!) ?? 0,
            Int(calculateView.textField2.text!) ?? 0,
            Int(calculateView.textField3.text!) ?? 0,
            Int(calculateView.textField4.text!) ?? 0,
            Int(calculateView.textField5.text!) ?? 0
        ]
        calculateModel?.sum(numberArray)
        view.endEditing(true)
    }
}

extension CalculateViewController : CalculateModelDelegate {
    func calculateModel(_ calculateModel: CalculateModel, didCalculateResult result: Int) {
        calculateView.resultLabel.text = String(result)
    }
}
