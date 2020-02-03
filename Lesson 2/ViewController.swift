
import UIKit

class ViewController: UIViewController {
    
//labels
    @IBOutlet var redSliderLabel: UILabel!
    @IBOutlet var greenSliderLabel: UILabel!
    @IBOutlet var blueSliderLabel: UILabel!
    
//sliders
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
//squares
    @IBOutlet var redSquare: UIView!
    @IBOutlet var greenSquare: UIView!
    @IBOutlet var blueSquare: UIView!
    
    @IBOutlet var resetButtonBackground: UIButton!
    
    
    let cornerRadius = 6
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        redSlider.value = 0.5
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSquare.layer.cornerRadius = CGFloat(cornerRadius)
        redSliderLabel.text = "0.5"
        redSquare.backgroundColor = redSquare.backgroundColor?.withAlphaComponent(CGFloat(0.5))
        
        greenSlider.value = 0.5
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSquare.layer.cornerRadius = CGFloat(cornerRadius)
        greenSliderLabel.text = "0.5"
        greenSquare.backgroundColor = greenSquare.backgroundColor?.withAlphaComponent(CGFloat(0.5))
        
        blueSlider.value = 0.5
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSquare.layer.cornerRadius = CGFloat(cornerRadius)
        blueSliderLabel.text = "0.5"
        blueSquare.backgroundColor = blueSquare.backgroundColor?.withAlphaComponent(CGFloat(0.5))
        
        resetButtonBackground.layer.cornerRadius = resetButtonBackground.frame.height / 2
    
    }

    @IBAction func sliderAction() {
        let roundRedSliderValue = round(redSlider.value * 100) / 100
        redSliderLabel.text = String(roundRedSliderValue)
        redSquare.backgroundColor = redSquare.backgroundColor?.withAlphaComponent(CGFloat(redSlider.value))
        
        let roundGreenSliderValue = round(greenSlider.value * 100) / 100
               greenSliderLabel.text = String(roundGreenSliderValue)
               greenSquare.backgroundColor = greenSquare.backgroundColor?.withAlphaComponent(CGFloat(greenSlider.value))
        
        let roundBlueSliderValue = round(blueSlider.value * 100) / 100
               blueSliderLabel.text = String(roundBlueSliderValue)
               blueSquare.backgroundColor = blueSquare.backgroundColor?.withAlphaComponent(CGFloat(blueSlider.value))
    }
    
    @IBAction func resetButton() {
        blueSquare.backgroundColor = blueSquare.backgroundColor?.withAlphaComponent(CGFloat(0.5))
        blueSlider.value = 0.5
        blueSliderLabel.text = "0.5"
        
        
        greenSquare.backgroundColor = greenSquare.backgroundColor?.withAlphaComponent(CGFloat(0.5))
        greenSlider.value = 0.5
        greenSliderLabel.text = "0.5"
        
        redSquare.backgroundColor = redSquare.backgroundColor?.withAlphaComponent(CGFloat(0.5))
        redSlider.value = 0.5
        redSliderLabel.text = "0.5"
    }
}

