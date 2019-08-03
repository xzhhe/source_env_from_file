describe Fastlane::Actions::SourceEnvFromFileAction do
  describe '#run' do
    it 'env' do
      Fastlane::Actions::SourceEnvFromFileAction.run(
        filepath: 'spec/key_value_file'
      )

      pp ENV['name1']
      pp ENV['name2']
      pp ENV['name3']
      pp ENV['name4']
      pp ENV['name5']

      expect(ENV['name1']).to eq('xiongzenghui')
      expect(ENV['name2']).to eq('xiongzenghui')
      expect(ENV['name3']).to eq("'xiongzenghui'")
      expect(ENV['name4']).to eq('xiongzenghui')
      expect(ENV['name5']).to eq('1 2 3 4 5 6')
    end
  end
end