$gitUserName = "Julio Filizzola"
$gitUserEmail = "juliofilizzola@hotmail.com"
$userProfilePath = $env:USERPROFILE
$gitCommitTemplateFile = "$userProfilePath\.gitmessage"

winget install -e --id Git.Git --accept-package-agreements --accept-source-agreements
winget install -e --id Microsoft.VisualStudioCode --accept-package-agreements --accept-source-agreements
winget install -e --id Docker.DockerDesktop --accept-package-agreements --accept-source-agreements
winget install -e --id Discord.Discord --accept-package-agreements --accept-source-agreements
winget install -e --id JetBrains.Toolbox --accept-package-agreements --accept-source-agreements
winget install -e --id WarpTechnologies.Warp --accept-package-agreements --accept-source-agreements

git config --global user.name $gitUserName
git config --global user.email $gitUserEmail
git config --global init.defaultBranch "main"
git config --global core.editor "code --wait"

$commitMessageGeneratorPrompt = @"
You are a commit message generator.

Analyze the staged changes and generate a commit message following the Conventional Commits specification.

Structure:
- Line 1: commit type + short description
- Blank line
- Line 3: "details:" followed by a concise summary of what was changed

Rules:
- Allowed types: feat, fix, docs, style, refactor, perf, test, chore, build, ci.
- Choose the most appropriate type based on the changes.
- Use the imperative form in English (e.g. add, fix, update, remove).
- Be concise and objective.
- Avoid overly verbose descriptions or unnecessary details.
- Do NOT include emojis.
- Do NOT include file names unless strictly necessary.
- Details should mention key functions, logic, or behaviors that were modified.
- Do NOT exceed 3 bullet points in details.
- Output only the commit message.

Format example:
fix: correct bank account validation

details:
- adjust validation logic in validateBankAccount
- handle empty account number scenario
"@

Set-Content -Path $gitCommitTemplateFile -Value $commitMessageGeneratorPrompt -Encoding UTF8
git config --global commit.template $gitCommitTemplateFile
