#Flutter Web

buildWeb:
	flutter clean
	flutter build web

run_web_on_custom_ip:
	flutter run -d chrome --web-hostname 192.168.1.10 --web-port 8000

#Git

#make commit_and_push <commit_message> branchName=branchName
commit_and_push:
	git add .
	git commit -m "$(wordlist 2, $(words $(MAKECMDGOALS)), $(MAKECMDGOALS))"
	git push origin $(branchName)

push_branch:
	git push origin $(word 2, $(MAKECMDGOALS))

#Checkout the main branch.
#Merge the source_branch branch into target_branch.
#Push the merged main branch to the remote.
# make merge_branches target_branch=main source_branch=feature/xy
merge_branches:
	git checkout $(target_branch)
	git pull origin $(target_branch)
	git merge $(source_branch)
	git push origin $(target_branch)

createBranch:
	git branch $(word 2, $(MAKECMDGOALS))

delete_local_branch:
	git branch -D $(word 2, $(MAKECMDGOALS))

delete_remote_branch:
	git push origin --delete $(word 2, $(MAKECMDGOALS))

delete_branch_locally_and_remotely:
	git branch -D $(word 2, $(MAKECMDGOALS)) && git push origin --delete $(word 2, $(MAKECMDGOALS))
