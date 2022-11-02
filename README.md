 # Football Data Analysis
I am a computer science student and also greatly passionate about football. Not just as a fan, but I like watching and analyzing football objectively and try to gain in-depth undestanding of the game. My computer science knowledge helps a little bit in this regard. This project is a culmination of those two aspects of my life.

The objective is to increase my literacy of Football and Football Analytics. Working with this kind of data helps me understand football better. I enjoy being part of this educational journey day by day and aspire to learn more about this sport.

As a by-product of this project, I am also able to share my learnings with my friends and other people on the internet who are also football fans, and hopefully aid them in learning as well. I ocassionally post my work on social networks and engage in conversation with other similar-minded people in the community.

## Workflow
All the code in my [Football-Data-Analysis](https://github.com/shadeszn/Football-Data-Analysis) GitHub repository is included in the Jupyter Notebooks subfolder, of which the workflow is divided into the following:

1. Webscraping raw football data from the internet (usually in .csv or .json format).
2. Loading the datasets into Python using pandas for data cleaning.
3. Storing the cleaned data into a local PostgreSQL database server.
4. Performing various operations in Postgres like filtering, aggregation, grouping, sorting and using other window functions until the data is ready to be used for analysis. There are many instances where complex joins are required within multiple tables.

(Data operations can be done in pandas as well, but I am much more comfortable using an RDBMS software. It also helps refresh my SQL knowledge.)

5. Now the data is trimmed down and presented in a specific manner as per the requirement.
6. Loading this data again in Python and using matplotlib to illustrate my findings.

__NOTE:__ Analyzing the data and generating insights is always the end goal, not creating visuals. In each case I study the final data and make sure I understand it completely, after which I will be able infer something useful from it. 

BUT, how do you convey your insights to someone who:
* understands football but does not understand data?
* does not know how to intepret data in the correct context?
* wants to learn about various data available in football, but raw data is too confusing?

I realized during my learning journey that visualzing data in a useful skill to have. In order to communicate my insights to other people, I use these visualizations.

## Some Analysis samples
Here are some samples of my work:

1. __Most clinical finishers: These players have a finshing ability well above the average footballer.__
![clinical finisher](https://github.com/shadeszn/Football-Data-Analysis/blob/main/visualizations/striker_barchart.png)

2. __Shot Stopping ability of Premier League Goalkeepers:__
![shot stopping](https://github.com/shadeszn/Football-Data-Analysis/blob/main/visualizations/gsaa_barchart.png)

3. __The most Complete Goalkeeper in world football:__
![alisson chart](https://github.com/shadeszn/Football-Data-Analysis/blob/main/visualizations/GK_charts/Alisson.png)

4. __Which players complete the most passes in a match, and also who have the highest passing accuracy:__
![player passing](https://github.com/shadeszn/Football-Data-Analysis/blob/main/visualizations/passing_scatter.png)

5. __Arsenal Women FC's defensive numbers in the Women's Super League:__
![wsl_linegraph](https://github.com/shadeszn/Football-Data-Analysis/blob/main/visualizations/wsl_xga_linegraph.png)

6. __A simple table ranking the highest volume passers:__
![most passes](https://github.com/shadeszn/Football-Data-Analysis/blob/main/visualizations/mostpasses_table.png)

## Tech Stack

![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)

![Pandas](https://img.shields.io/badge/pandas-%23150458.svg?style=for-the-badge&logo=pandas&logoColor=white)

![Matplotlib](https://img.shields.io/badge/Matplotlib-%23ffffff.svg?style=for-the-badge&logo=Matplotlib&logoColor=black)

![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)



## 🔗 Links
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/not-ankurbiswas/)
