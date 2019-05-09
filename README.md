# Prediction - Comparing Trees

### Description

In this assignment, the student data is modeled using three flavors of tree algorithm: CART, C4.5 and C5.0. We will be using these algorithms to attempt to predict which students drop out of courses.

### Prerequisites

**R Packages**

In order to generate our models we will need several packages. The first package you should install is [caret](https://cran.r-project.org/web/packages/caret/index.html).

There are many prediction packages available and they all have slightly different syntax. caret is a package that brings all the different algorithms under one hood using the same syntax. 

We will also be accessing an algorithm from the [Weka suite](https://www.cs.waikato.ac.nz/~ml/weka/). Weka is a collection of machine learning algorithms that have been implemented in Java and made freely available by the University of Waikato in New Zealand. To access these algorithms you will need to first install both the [Java Runtime Environment (JRE) and Java Development Kit](http://www.oracle.com/technetwork/java/javase/downloads/jre9-downloads-3848532.html) on your machine. You can then then install the [RWeka](https://cran.r-project.org/web/packages/RWeka/index.html) package within R.

(Issue 1: failure to install RWeka/RWekajars, paste "sudo R CMD javareconf" into terminal and try to install again)

**Weka requires Java and Java causes problems. If you cannot install Java and make Weka work, please follow the alternative instructions at line 121**

The last package you will need is [C50](https://cran.r-project.org/web/packages/C50/index.html).

```
install.packages("tidyr")
install.packages("dplyr")
install.packages("caret")
install.packages("ggplot2")
install.packages("C50")
```


## Procedure





## Author
[Chieh-An (Victoria) Yang](https://www.linkedin.com/in/victoria-chieh-an-yang/) - Learning Analytics MS student at Teachers College, Columbia University


## Acknowledgments
**Charles Lang** - Visiting Assistant Professor at Teachers College, Columbia University
* This project is an assignment for HUDK 4051: Learning Analytics: Process and Theory, an educational data mining course taught by Dr.Lang in Teachers College. 
