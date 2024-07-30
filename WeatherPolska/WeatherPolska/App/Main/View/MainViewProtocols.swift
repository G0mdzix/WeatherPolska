import Foundation

// MARK: - MainViewDelegate

protocol MainViewDelegate: AnyObject {}

// MARK: - MainViewCallBack

protocol MainViewCallBack: AnyObject {
  func handleViewDidLoad()
  func handleViewWillAppear()
  func handleViewWillDisappear()
}
