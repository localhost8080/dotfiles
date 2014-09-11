import sublime, sublime_plugin

class GitCommitAndPushCommand(sublime_plugin.WindowCommand):
    def run(self, scope=""):
        self.window.run_command("git_quick_add");
        self.pause;
        self.window.run_command("git_quick_commit");
        self.pause;
        self.window.run_command("git_push");
