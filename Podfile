require 'pp'
install! "cocoapods",
  :generate_multiple_pod_projects => true,
  :incremental_installation => false
# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'


target 'App' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  pod 'Reveal-SDK'
  # Pods for App

end

target 'Service' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  pod 'Alamofire'

  # Pods for Service

end

target 'Utility' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  pod 'Bureau'
  pod 'NextGrowingTextView'
  # Pods for Utility

end

target 'Umbrella' do

  use_frameworks!

  pod "Alamofire"
  pod 'Bureau'
  pod 'NextGrowingTextView'
  pod "RxSwift"
  pod "RxCocoa"
  pod "RxRelay"
  pod "RxFuture"
  pod "Moya"
  pod "Nuke"
  pod "Tabman"
  pod "Pageboy"
  pod "SVGKit"
  pod "CocoaLumberjack" # Depends on SVGKit
  pod "StackScrollView"
  pod "ViewSizeCalculator"
  pod "MBProgressHUD"
  pod "EasyPeasy"
  pod "TypedTextAttributes"
  pod "InteractiveZoomDriver"
  pod "Reusable"
  pod "lottie-ios"
  pod "MagazineLayout"
end

use_umbrella = true

umbrella_target_name = "Pods-Umbrella"

if use_umbrella 

  pre_install do |installer|

    umbrella_target = installer.aggregate_targets.filter { |target|
      target.name == umbrella_target_name
    }.first

    if umbrella_target.nil? 
      Pod::UI.warn "Not found umbrella target"
    end

    static_targets = umbrella_target.pod_targets

    static_targets.each { |target| 
      pp target
      def target.build_type
        Pod::BuildType.static_framework
      end

      def target.build_as_static_framework?
        true
      end
    }
    
  end

  post_install do |installer|

    umbrella_target = installer.aggregate_targets.filter { |target|
      target.name == umbrella_target_name
    }.first

    if umbrella_target.nil? 
      Pod::UI.warn "Not found umbrella target"
    end

    static_targets = umbrella_target.pod_targets
  
    installer.aggregate_targets
      .filter { |target|
        target.name != umbrella_target_name
      }
      .each { |target|

        target.xcconfigs.each do |config_name, config_file|

          # puts "💥 Integrate with Umbrella =>" + aggregate_target.name

          static_targets.each { |target|
            # puts "  🎫 Remove linking => " + target.product_module_name
            config_file.frameworks.delete(target.product_module_name)
          }

          xcconfig_path = target.xcconfig_path(config_name)
          config_file.save_as(xcconfig_path)
        end
      }

  end

end