import UIKit

class MainPresenter {

  // MARK: - Properties

  weak var view: MainViewDelegate?

  // MARK: - Private Properties

  private let interactor: MainPresenterCallBack
  private let router: MainRouterDelegate

  // MARK: - Lifecycle

  init(
    view: MainViewDelegate,
    interactor: MainPresenterCallBack,
    router: MainRouterDelegate
  ) {
      self.interactor = interactor
      self.router = router
      self.view = view
  }
}

// MARK: - MainViewCallBack

extension MainPresenter: MainViewCallBack {
  func handleViewDidLoad() {
    interactor.performWhenViewDidLoad()
  }

  func handleViewWillAppear() {
    interactor.performWhenViewWillAppear()
  }

  func handleViewWillDisappear() {
    interactor.performWhenViewWillDisappear()
  }
}

// MARK: - MainPresenterDelegate

extension MainPresenter: MainPresenterDelegate {
}

// MARK: - Private Functions

extension MainPresenter {
}

// MARK: - Constants

private enum Constants {
}
