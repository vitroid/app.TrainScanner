prepare:
	pip3 install TrainScanner           #installed to system area.
	pip3 install py2app
#This only works when the codes are obtained manually.
develop: clean
	/usr/local/bin/python3 trainscanner_gui-setup.py py2app -A
deploy: clean
	/usr/local/bin/python3 trainscanner_gui-setup.py py2app
install: deploy
	-rm -rf /Applications/TrainScanner.app
	cp -a dist/TrainScanner.app /Applications
clean:
	-rm -rf dist build
#setup:
#	py2applet --make-setup /usr/local/bin/trainscanner
#	mv setup.py trainscanner-setup.py
