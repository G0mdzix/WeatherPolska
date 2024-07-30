import UIKit

class MainAssembly {
  func build() -> UIViewController {
    let view = CreateModules.buildViewController()
    let interactor = CreateModules.buildInteractor()
    let router = CreateModules.buildRouter()
    let presenter = CreateModules.buildPresenter(
      view: view,
      interactor: interactor,
      router: router
    )

    view.presenter = presenter
    interactor.presenter = presenter
    router.view = view

    return view
  }
}

private enum CreateModules {
  static func buildViewController() -> MainViewController {
    let viewController = MainViewController()
    return viewController
  }

  static func buildInteractor() -> MainInteractor {
    let interactor = MainInteractor(
      services: MainInteractor.Services()
    )
    return interactor
  }

  static func buildRouter() -> MainRouter {
    let router = MainRouter()
    return router
  }

  static func buildPresenter(
    view: MainViewDelegate,
    interactor: MainPresenterCallBack,
    router: MainRouterDelegate
  ) -> MainPresenter {
    let preseneter = MainPresenter(
      view: view,
      interactor: interactor,
      router: router
    )
    return preseneter
  }
}
