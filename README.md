# socialnetworks
Network Visualization using Gephi and Python and Sentiment Analysis using R
My project is to analyze the Twitter users’ sentiments and view the support for each candidate during the latest U.S Presidential Debate 2016. I will also find the centralities of the most dominate twitter users (aka “nodes”) and the kind of relations they have with the other users (“edges”).
I will also use the Girvan-Newman algorithm to detect the 2 communities (Hillary vs Trump) and estimate their size and strength.

Overview of Steps

1.	Import the twitter data using NodeXL Basic Import function into Excel using the twitter search function for #debates2016 and visualize it using the basic functions.
2.	Import the excel file into Gephi and export it as GraphML file into a python notebook using NetworkX library.
3.	Calculate different network parameters like No. of nodes, edges, betweenness & eigenvector centralities, clustering co-efficient, diameter using Python Script functions.
4.	Detect communities using the Girvan-Newman algorithm on NetworkX. Create a loop and keep on deleting edges to result in different clusters.
5.	Open the GraphML file in Gephi and color code the nodes according to their clustering co-efficient and centralities. Format the graph so that we can visualize it into different communities with distinct labels and influencers (FOR E.G Polarized network). 
6.	Perform sentiment analysis using R to see the twitter users’ thoughts and feelings and create a word-cloud.


Through this I hope to demonstrate the various social network concepts and gauge the strength and reactions of the debate on Twitter.

