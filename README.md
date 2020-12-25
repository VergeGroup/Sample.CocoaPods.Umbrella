# Sample.CocoaPods.Umbrella

A sample project that uses umbrella framework to merge multiple dylibs.

## Strucuture

![image](https://user-images.githubusercontent.com/1888355/103131733-41c7cb80-46e5-11eb-91fe-8f497ff0016c.png)

## a part of Podfile

```ruby

umbrella_target_name = "Pods-Umbrella"

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
      puts "Call"
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

      pp target

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
```
