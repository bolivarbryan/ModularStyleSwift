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
        let cardView = UIView(frame: CGRect(x: 10, y: 150, width: 300, height: 90))
        styleCardView(cardView)
        view.addSubview(cardView)

        let profileImageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 70, height: 70))
        profileImageView.backgroundColor = .lightGray
        styleViewWithCorner(4)(profileImageView)
        cardView.addSubview(profileImageView)

        let nameLabel = UILabel(frame: CGRect(x: 90, y: 10, width: 200, height: 30))
        styleLabelName(nameLabel)
        cardView.addSubview(nameLabel)
        nameLabel.text = "Apple"

        let subtitleLabel = UILabel(frame: CGRect(x: 90, y: 40, width: 200, height: 30))
        styleLabelSmall(subtitleLabel)
        cardView.addSubview(subtitleLabel)
        subtitleLabel.text = "Jan 3-7"

    }
}


let controller = Controller()
controller.view.frame = CGRect(x: 0, y: 0, width: 320, height: 480)
PlaygroundPage.current.liveView = controller.view
