import Foundation

class MainInteractor {

  // MARK: - Properties

  weak var presenter: MainPresenterDelegate?

  // MARK: - Properties (private)

  private let services: Services

  // MARK: - Lifecycle

  init(services: Services) {
    self.services = services
  }
}

// MARK: - MainPresenterCallBack

extension MainInteractor: MainPresenterCallBack {
  func performWhenViewDidLoad() {
  }

  func performWhenViewWillAppear() {
  }

  func performWhenViewWillDisappear() {
  }
}

// MARK: - MainInteractorDelegate

extension MainInteractor: MainInteractorDelegate {
}

// MARK: - Services

extension MainInteractor {
  struct Services {
  }
}

// MARK: - Constants

private enum Constants {
}
