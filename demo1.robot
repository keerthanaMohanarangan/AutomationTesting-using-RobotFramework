***Settings***
Library    SeleniumLibrary
Suite Setup    Go to homepage
Suite Teardown    Close All Browsers

*** Variables ***
${HOMEPAGE} 	http://www.google.fi
${BROWSER}  	chrome


*** Test Cases ***
Google Neste and find www.neste.fi
	Google and check results	neste  	https://www.neste.fi

*** Keywords ***
Google and check results
	[Arguments]	${searchkey}	${result}
	Input Text	class=gLFyf.gsfi	${search key}
	Click Button	class=gNO89b
	wait Until Page Contains	${result}

Go to homepage
	Open Browser	${Homepage} 	${Browser}