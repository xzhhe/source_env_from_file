# source_env_from_file plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-source_env_from_file)

## Getting Started

This project is a [_fastlane_](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-source_env_from_file`, add it to your project by running:

```bash
fastlane add_plugin source_env_from_file
```

## About source_env_from_file

set ENV["key"]=value from file like key=value

## Example

if you have key=value file like this:

```
export name1=xiongzenghui
name2=xiongzenghui
name3='xiongzenghui'
name4="xiongzenghui"
name5=1 2 3 4 5 6
```

so you need like this use this plugin to parse file to setup to ENV

```ruby
Fastlane::Actions::SourceEnvFromFileAction.run(
  filepath: '/path/to/key_value_file'
)

pp ENV['name1']
pp ENV['name2']
pp ENV['name3']
pp ENV['name4']
pp ENV['name5']
```

## Run tests for this plugin

To run both the tests, and code style validation, run

```
rake
```

To automatically fix many of the styling issues, use
```
rubocop -a
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using _fastlane_ Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About _fastlane_

_fastlane_ is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
