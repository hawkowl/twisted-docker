all:
	echo "ok"
	docker build -t hawkowl/debian7 - < debian7
	docker build -t hawkowl/debian7-py27 - < debian7-py27
	docker build -t hawkowl/debian7-py33 - < debian7-py33
	docker build -t hawkowl/debian7-py34 - < debian7-py34
	docker build -t hawkowl/debian7-py35 - < debian7-py35
	docker build -t hawkowl/debian7-pypy25 - < debian-pypy25

	docker build -t hawkowl/debian8 - < debian8
	docker build -t hawkowl/debian8-py27 - < debian8-py27
	docker build -t hawkowl/debian8-py33 - < debian8-py33
	docker build -t hawkowl/debian8-py34 - < debian8-py34
	docker build -t hawkowl/debian8-py35 - < debian8-py35

hawkowl-bots:
	docker build -t debian7-py27-twbuildbot - < debian7-py27-twbuildbot
	docker build -t debian7-py33-twbuildbot - < debian7-py33-twbuildbot
	docker build -t debian7-py34-twbuildbot - < debian7-py34-twbuildbot
	docker build -t debian7-py35-twbuildbot - < debian7-py35-twbuildbot
	docker build -t debian7-pypy25-twbuildbot - < debian7-pypy25-twbuildbot


start-hawkowl-bots: kill-hawkowl-bots
	docker run -d debian7-py27-twbuildbot
	docker run -d debian7-py33-twbuildbot
	docker run -d debian7-py34-twbuildbot
	docker run -d debian7-py35-twbuildbot
	docker run -d debian7-pypy25-twbuildbot
