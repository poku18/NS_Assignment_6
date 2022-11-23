library(igraph)
options(digits=3)
#Q1
graph1 <- erdos.renyi.game(30, 0.17)
plot(graph1,vertex.label=NA, layout=layout_with_gem(graph1))

#Q2 a) How many edges were created?
print(ecount(graph1))

#Q2 B) Compute the degree distribution of the network. 
deg <- degree_distribution(graph1)
print(deg)
#Q2 c) Plot a histogram of the degree distribution.
hist(deg, col="skyblue")

#Q2 d) Compute the density of the network. 
print(graph.density(graph1))

#Q3 a) Calculate the density of graph2. 
graph2 <- erdos.renyi.game(30, 0.5)
print(graph.density(graph2))
plot(graph2,vertex.label=NA, layout=layout_with_gem(graph2))


#Q3 b) Does graph2 have a higher or lower density than graph1?  
#Higher density

#Q3 c) What does the difference in density of both graphs with respect to the value of p tell you? 

#Q3 d) Increase the number of nodes of graph2 to 100 (p still remains 0.5) and compute the density of the network. ?
graph2 <- erdos.renyi.game(100, 0.5)
print(graph.density(graph2)) #0.504

#Q4 Plot the graph with preferential attachment
graph1_pa <- sample_pa(30)
plot(graph1_pa,edge.arrow.size=0.3)

#Q4 a) Calculate the density of graph1_pa and compare that to the density of graph1 and graph2 from Q1 and Q3.
print(graph.density(graph1_pa)) #0.033 The density is lower than the previous graphs

#Q4 b) Carry out a random walk on the graph and return the vertices that the random walk passed through
w<- random_walk(graph1_pa,start=1,steps=8,mode = c("in"))
print(table(w))

#Q4 c) Increase the power of the preferential attachment from 1 (default) to 3 and plot another random graph (graph2_pa)
graph2_pa <- sample_pa(30,3)
plot(graph2_pa,vertex.label=NA,edge.arrow.size=0.3)

#Q4 d) Calculate the density of graphs graph1_pa and graph2_pa.
print(graph.density(graph1_pa))
print(graph.density(graph2_pa))

graph3_pa <- sample_pa(100,1)
plot(graph3_pa,vertex.label=NA,edge.arrow.size=0.3)
print(graph.density(graph3_pa))

