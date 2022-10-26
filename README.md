 # Football Data Analysis
This repository contains any kind of analysis and visualization that I do using data and statistics from professional Football. I like reading and analyzing in-depth of various aspects in Football. There are many details within Football and other sports that go unnoticed by the common eye. My motive is to find any piece of intersting football related data on the internet and then convey that to other people. For that I use very simplified visualizations which are easy to understand for the average football-watching audience (usually for my friends or social networking sites).

## Workflow
All the code in my [Football-Data-Analysis](https://github.com/shadeszn/Football-Data-Analysis) GitHub repository is included in the Jupyter Notebooks subfolder, of which the workflow is divided into the following:

1. Webscraping raw football data from the internet (usually in .csv or .json format).
2. Load the data into python using a pandas DataFrame where I can perform data cleaning.
3. After data has been cleaned, I load the data into a PostgreSQL database from python.
4. Within Postgres, I perform various data operations such as row and column operations, filtering, aggregation, grouping, sorting and other window functions. There are many instances where complex joins are required within multiple datasets.
(Data operations can be done in pandas as well, but I am much more comfortable using an RDBMS software. It also helps refresh my SQL knowledge.)

5. Now the data is trimmed down and presented in a specific manner as per my requirements.
6. I load this data again in python, where I use the matplotlib library to create visualizations.


## Some Analysis samples
To analyze data you do not need visualizations. Insights can be drawn by morphing and studying the data you have. Creating visuals is not my specialization as well.

BUT, how do you convey your insights to someone who:
* understands football but does not understand data?
* does not know how to intepret data in the correct context?
* wants to learn about various data available in football, but raw data is too confusing?

That is where visualizations come in. To be honest this is a handy skillset to have and something that I learnt along the way (though I am not very good at it).

Here are some samples from my work:

1. __Most clinical finishers: These players have a finshing ability well above the average footballer.__
![clinical finisher](https://github.com/shadeszn/Football-Data-Analysis/blob/main/visualizations/striker_barchart.png)

2. __Shot Stopping ability of Premier League Goalkeepers:__
![shot stopping](https://github.com/shadeszn/Football-Data-Analysis/blob/main/visualizations/gsaa_barchart.png)

3. __Which players complete the most passes in a match, and also who have the highest passing accuracy:__
![player passing](https://github.com/shadeszn/Football-Data-Analysis/blob/main/visualizations/passing_scatter.png)

4. __Arsenal Women FC's defensive numbers in the Women's Super League:__
![wsl_linegraph](https://github.com/shadeszn/Football-Data-Analysis/blob/main/visualizations/wsl_xga_linegraph.png)

5. __A simple table ranking the highest volume passers:__
![most passes](https://github.com/shadeszn/Football-Data-Analysis/blob/main/visualizations/mostpasses_table.png)

## Tech Stack

![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)

![Pandas](https://img.shields.io/badge/pandas-%23150458.svg?style=for-the-badge&logo=pandas&logoColor=white)

![Matplotlib](https://img.shields.io/badge/Matplotlib-%23ffffff.svg?style=for-the-badge&logo=Matplotlib&logoColor=black)

![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)



## 🔗 Links
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/not-ankurbiswas/)
