# **Your Heatmap Is Lying to You: How Bad Visualizations Corrupt Biological Insight.**

----

Common abuses of heatmaps, color scales, clustering defaults, and how they silently mislead interpretation in RNA-seq and scRNA-seq. 

## Introduction: 

The visual representation of data is at the heart of science. Visualization in conjunction with data analysis is crucial in information discovery in research, as it highlights and identify patterns, trends and outliers while guiding users through aesthetics graphical representation in decision-making. The exploration and visualization of complex biological data sets is challenging due to the increasing quantity of  multivariant data gathered through the use of new and growing technologies. This has created the problem of choosing among the arrays of methods, the visualization model that optimize extraction of meaningful insights from data sets with beautiful cartography. The challenge in representing diverse data sets stems from choosing graphical elements that can properly communicate values, properties and relationships of data points to the users.  

  Heatmaps are two-dimensional graphical representations of data where the values of a variable are shown as colors. Heatmaps are prevalent among biological visualization tools used in the representation multivariate data to depict genes expression. To be frank, most heatmaps are decorative, not informative. Poor choice in design especially color scale, data scaling/normalization and clustering (default settings) can distort patterns, create false conclusions and mislead interpretations of biological insights. 


**Common Abuses Of Heatmaps** 


**Color Scales:** 
Color is the core of heatmaps. The intuitive nature of the color scale and default/pretty choices can create a different perception of our analysis that could betray reality. Let’s accept the facts that equal changes in data don't produce equal changes in perceived color due to (non-)perceptual uniformity and order. For instance, with the Rainbow-like(Jet) and Red-Green color scales which; Distort data through uneven color gradients, unreadable to those with some form of color-vision deficiency and color combination that unintuitive to the data being represented, all leads to problematic biological insights. Alternatively, we could use sequential scales like viridis (dark purple to yellow) for absolute expression levels and diverging scales (blue-white-red) for differential data with neutral midpoint at zero or average.



**Clustering Defaults:**
A cluster heatmap is a popular graphical method for visualizing high dimensional data where a table of numbers is scaled and encoded as a tiled matrix of colored cells. The rows and columns of the matrix are ordered to highlight patterns and are often accompanied by dendrograms and extra columns of categorical annotation. clustering can dramatically affect our ability to see structure in heat maps. Hierarchical clustering (default clustering) is one technique for reordering matrices —usually Euclidean distance and Complete linkage,  and can creates several display challenges; 



+ The "Leaf Ordering" Problem 
+ Sensitivity to Outliers 
+ Distance Metric Distortion, etc.

To overcome these display challenges, use Spearman/Pearson Correlation instead, ensure Optimal “Leaf Ordering” and use consensus clustering or bootstrap your trees to see if the clusters are stable or just fluke of that specific run.

### Conclusion:
There is need for proper knowledge on the several types of heatmaps, guidance on when to use and how to interpret heatmaps and how heatmaps are created, and  how their appearance can be modified by manipulating different display settings. Heatmaps can be deceptive because they look so intuitive that we often do not realize how much we actually do not understand. The aim of visualization is to report true data variations, reduce complexity, user-friendly for people with color-vision deficiency. Avoid red-green as a color combination because it limits accessibility to information for color-blind individuals. 

-----


#### **References:**

i.	 António Cruz, Joel P Arrais, Penousal Machado, Interactive and coordinated visualization approaches for biological data analysis, Briefings in Bioinformatics, Volume 20, Issue 4, July 2019, Pages 1513–1523, https://doi.org/10.1093/bib/bby019 

ii.	 Bojko, A. (2009, July). Informative or misleading? Heatmaps deconstructed. In International conference on human-computer interaction (pp. 30-39). Berlin, Heidelberg: Springer Berlin Heidelberg. 

iii.	Bessler, L. (2023). Heat maps. In Visual Data Insights Using SAS ODS Graphics: A Guide to Communication-Effective Data Visualization (pp. 221-261). Berkeley, CA: Apress. 

iv.	Crameri, F., Shephard, G. E., & Heron, P. J. (2020). The misuse of colour in science communication. Nature communications, 11(1), 5444. Zhao, S., Guo, Y., Sheng, Q., & Shyr, Y. (2014). Advanced heat map and clustering analysis using heatmap3. BioMed research international, 2014(1), 986048. 

v.	Gehlenborg, N., & Wong, B. (2012). Heat maps. Nature Methods, 9(3), 213. 

vi.	Gu, Z., & Hübschmann, D. (2022). Make interactive complex heatmaps in R. Bioinformatics, 38(5), 1460-1462. 

vii.	Wilkinson, L., & Friendly, M. (2009). The history of the cluster heat map. The American Statistician, 63(2), 179-184. 








