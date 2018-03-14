describe Fastlane::Actions::RemoveGitTagAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The remove_git_tag plugin is working!")

      Fastlane::Actions::RemoveGitTagAction.run(nil)
    end
  end
end
