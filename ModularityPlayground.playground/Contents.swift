import PlaygroundSupport
import ModularityStyle

var str = "Hello, playground"

final class Controller: UIViewController {

    init(){
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        view.backgroundColor = .white

        let borderCircle = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        styleViewCircleBorder(borderCircle)
        view.addSubview(borderCircle)

        let label = UILabel(frame: CGRect(x: 50, y: 170, width: 80, height: 80))
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        styleLabelParagraph(label)
        view.addSubview(label)
    }
}

let controller = Controller()
controller.view.frame = CGRect(x: 0, y: 0, width: 320, height: 480)
PlaygroundPage.current.liveView = controller.view
