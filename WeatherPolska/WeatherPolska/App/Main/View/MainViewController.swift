import UIKit
import SwiftUI

class MainViewController: UIViewController {

  // MARK: - Properties

  var presenter: MainViewCallBack?

  // MARK: - Lifecycle

  init(presenter: MainViewCallBack? = nil) {
    self.presenter = presenter
    super.init(nibName: nil, bundle: nil)
  }

  required init?(coder: NSCoder) {
    fatalError(Constants.Coder.fatalError)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    guard let presenter = presenter else { return }
    presenter.handleViewDidLoad()
    view.backgroundColor = UIColor.test
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    guard let presenter = presenter else { return }
    presenter.handleViewWillAppear()
  }

  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    guard let presenter = presenter else { return }
    presenter.handleViewWillDisappear()
  }
}

// MARK: - MainViewDelegate

extension MainViewController: MainViewDelegate {
}

// MARK: - PrivateFunctions

extension MainViewController {
}

// MARK: - Layouts

extension MainViewController {
  private func layout() {
    addViews()
  }

  private func addViews() {
  }
}

// MARK: - Constants

private enum Constants {
  enum Coder {
    static let fatalError = "init(coder:) has not been implemented"
  }
}
