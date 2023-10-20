---
title: Twitter user profiling
tags:
    - project
---

## Objective

[![Github](https://img.shields.io/badge/GitHub-181717.svg?style=for-the-badge&logo=GitHub&logoColor=white)](https://github.com/airaghidavide/twitter-user-report)

The purpose of the project is to provide a quick overview about the activity and the engagement related to a twitter profile. The account analyzed is related to the italian politician Matteo Salvini because his profile is placed among the most active Twitter profiles in Italy.

Here's the pipeline

## Pipeline

![pipeline](/img/pipeline_user_twitter.PNG)

## Methods Used

* Scraping: gather tweets with the library Twint. This library allows to collect almost the entire activity of a user without limitations
* Data Profiling: quick transformations (casting and field drop/rename) made with Pandas and PdPipe
* Data Visualization: made with Plotly and obtained the following plots:
  * Tables exposing:
      * All the collected tweets
      * Top 5 retweeted posts
      * Top 5 replied posts
      * Top 5 liked posts
  * Engagement overview over the time
      * Number of tweets progression
      * Number of likes progression
      * Numbers of retweets progression
      * Number of replies progression
  * Waffle chart to show the overall activity on weekday and month 
* Data Consumption: static report made with Datapane

[Link to the jupyter_notebook](https://colab.research.google.com/drive/1zTEQUdC5gWU8osT17VQ3hw9jSJsJQHI7?usp=sharing)

## Libraries

* Twint
* pdPipe
* pysqldf
* Seaborn
* Ploltly
* Datapane

## Results
### DataPane
[Link to the the report](https://datapane.com/u/airaghidavide/reports/M7bQbw3/twitter-profile-report-matteo-salvini/)

![tables_tweets](/img/tables_tweets.PNG)
![engagement](/img/engagement.PNG)
![heatmap](/img/heatmap.PNG)
