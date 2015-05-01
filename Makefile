all:
	echo "ok"
	docker build -t hawkowl/debian7 - < debian7
	docker build -t hawkowl/debian7-py27 - < debian7-py27
	docker build -t hawkowl/debian7-py34 - < debian7-py34
	docker build -t hawkowl/debian7-py35 - < debian7-py35

	docker build -t hawkowl/debian8 - < debian8
	docker build -t hawkowl/debian8-py27 - < debian8-py27
	docker build -t hawkowl/debian8-py34 - < debian8-py34
	docker build -t hawkowl/debian8-py35 - < debian8-py35
