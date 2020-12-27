# Sample.CocoaPods.Umbrella

A sample project that uses umbrella framework to merge multiple dylibs.

## Strucuture

![image](https://user-images.githubusercontent.com/1888355/103131733-41c7cb80-46e5-11eb-91fe-8f497ff0016c.png)

## Log

```
bundle exec pod install
Analyzing dependencies
Downloading dependencies
Static framework -> Alamofire
Static framework -> Bureau
Static framework -> CocoaLumberjack
Static framework -> EasyPeasy
Static framework -> InteractiveZoomDriver
Static framework -> MBProgressHUD
Static framework -> MagazineLayout
Static framework -> Moya
Static framework -> NextGrowingTextView
Static framework -> Nuke
Static framework -> Pageboy
Static framework -> Reusable
Static framework -> RxCocoa
Static framework -> RxSwift
Static framework -> RxRelay
Static framework -> RxFuture
Static framework -> SVGKit
Static framework -> StackScrollView
Static framework -> Tabman
Static framework -> TypedTextAttributes
Static framework -> ViewSizeCalculator
Static framework -> lottie-ios
📦 Pods-App
 -> Reveal-SDK (Dynamic)
 -> Alamofire (Static)
 -> Bureau (Static)
 -> CocoaLumberjack (Static)
 -> EasyPeasy (Static)
 -> InteractiveZoomDriver (Static)
 -> MBProgressHUD (Static)
 -> MagazineLayout (Static)
 -> Moya (Static)
   -> Alamofire (Static)
 -> NextGrowingTextView (Static)
 -> Nuke (Static)
 -> Pageboy (Static)
 -> Reusable (Static)
 -> RxCocoa (Static)
   -> RxSwift (Static)
   -> RxRelay (Static)
     -> RxSwift (Static)
 -> RxFuture (Static)
   -> RxSwift (Static)
 -> RxRelay (Static)
   -> RxSwift (Static)
 -> RxSwift (Static)
 -> SVGKit (Static)
   -> CocoaLumberjack (Static)
 -> StackScrollView (Static)
 -> Tabman (Static)
   -> Pageboy (Static)
 -> TypedTextAttributes (Static)
 -> ViewSizeCalculator (Static)
 -> lottie-ios (Static)
📦 Pods-Service
📦 Pods-Utility
 -> Alamofire (Static)
Generating Pods project
Integrating client project
Pod installation complete! There are 23 dependencies from the Podfile and 23 total pods installed.
```
