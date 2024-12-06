build:
	docker build -t cvd_mirror_updater .
save:
	git add .
	git commit -am 'save'
	git push origin master -u
run:
	docker run -it --rm --name cvd_mirror_updater -v $$(pwd):/opt/cvd_mirror  cvd_mirror_updater
