import Foundation

// MARK: - MainPresenterDelegate

protocol MainPresenterDelegate: AnyObject {
}

// MARK: - MainPresenterCallBack

protocol MainPresenterCallBack: AnyObject {
  func performWhenViewDidLoad()
  func performWhenViewWillAppear()
  func performWhenViewWillDisappear()
}
