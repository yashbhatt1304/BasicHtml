from github import Github
# Authentication is defined via github.Auth
from github import Auth

# using an access token
#for security removing token while pushing code to github
accessToken=""
auth = Auth.Token(accessToken)

# Public Web Github
g = Github(auth=auth)

def commitCheck():
    oldCommit="937e4d169a8b1c7ebdfda2ec6dc320c97abfcf4c"
    commit=g.get_user().get_repo("BasicHtml_CICD_HeroVired").get_commits()[0].sha

    if (oldCommit == commit):
        print("No New Commit")
        return "False"
    else:
        oldCommit=commit
        print("No New Commit")
        return "True"

commitCheck()
g.close()