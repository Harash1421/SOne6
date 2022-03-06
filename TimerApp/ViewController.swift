import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var counter = 0
    @IBOutlet var main_tvNumber:UILabel!
    @IBOutlet var main_Button:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //Set Has What Time Do You Show Screen On Mobile
        counter = 10
        /*
         for time in 1...10{
            counter = counter - 1
            main_tvNumber.text = String(counter)
            Thread.sleep(forTimeInterval: 1)
        }*/
        
        //Set Timer On Mobile
        main_tvNumber.text = String(counter)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(setTimer), userInfo: nil, repeats:  true)
        
    }
     @IBAction func main_buStart(){
         print("Button Clicked")
    }
    
    @objc func setTimer(){
        main_tvNumber.text = String(counter)
        counter -= 1
        if(counter == -1){
            timer.invalidate()
            main_tvNumber.text = "Done"
        }
    }
    
}
