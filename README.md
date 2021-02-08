## Inspiration
Political information is **polluted**. The onslaught of constitutional strife and uncertainty during the past 5 years has caused our sources of data on our politicians to become **littered** with fake news, social media hype, personal scandals and affairs.  And now, that's all we are exposed through and this makes it increasingly difficult to find factual information, and ultimately, diminishing informed decision making when electing for **change**. 

## What it does
Enter **POLIPARENCY**: A web-application that presents objective, factual information on any politician's **Platform**, **Voting Records** and **List of Donors** in a convenient interface. 

## How we built it
We implemented state of the art Artificial Intelligence utilising Natural Language Processing (NLP) transformer networks to gather objective information from several government databases.

The gathered information is presented in a succinct and direct manner, making it easy for a user to make an informed decision about their democracy. 

## Challenges we ran into
Using Google Cloud App Engine did not support the infrastructure for running TensorFlow. We were subjected into using the Compute Engine, which takes away the ability to deploy the app, and presented us with a barrage of firewalls. 

## Accomplishments that we're proud of
We successfully built our back end infrastructure using a Google Cloud MySQL server. However, loading the data into our database brought to light inconsistencies in our data which later would need to be resolved with preprocessing. Our next hurdle involved connecting our database to our flask web application, where lots of time was spent editing the permissions of our database. Thanks to the support of the mentors, we were able to successfully navigate through the deployment process and integrate our multifaceted modular design. 

## What we learned
Varun - HTML, CSS, Flask, ML deployment 
Kashif - NLP implementation, database management
Hisham - Text tokenization (data pre-processing), BART
Bobby - SQL database, Flask, Google Cloud 

## What's next for PoliParency
- Continue scaling our design with more forms of data 
- Implement querying of Donor Records
- Optimize performance
- Improve front-end and UI 
