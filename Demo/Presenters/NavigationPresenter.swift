import UIKit
import FeatherweightRouter

func navigationPresenter(_ title: String) -> UIPresenter {

    let navigationController = UINavigationController()
    navigationController.tabBarItem.title = title
    navigationController.tabBarItem.image = UIImage(named: "placeholder-icon")

    return RoutePresenter(
        getPresentable: { _ in navigationController },
        setChild: { _ in },
        setChildren: { navigationController.setViewControllers($0, animated: true) })
}
