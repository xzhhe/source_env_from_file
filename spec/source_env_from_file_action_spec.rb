describe Fastlane::Actions::SourceEnvFromFileAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The source_env_from_file plugin is working!")

      Fastlane::Actions::SourceEnvFromFileAction.run(nil)
    end
  end
end
