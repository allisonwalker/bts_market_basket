inspect(sort(itemsets, by = 'support', decreasing = T)[1:5])

quality(itemsets)$lift <- interestMeasure(itemsets, measure = 'lift', Groceries)

inspect(sort(itemsets, by = 'lift', decreasing = T)[1:5])

rules <- apriori(Groceries,
                 parameter = list(support = .001,
                                  minlen = 2,
                                  maxlen = 4,
                                  target = 'rules' # to mine for itemsets
                                  ))

inspect(rules)
quality(rules)$chi <- interestMeasure(rules, measure = 'chi', significance = T, Groceries)
inspect(sort(rules, by = 'lift', decreading = T)[1:5])
plot(rules)
install.packages('arulesViz')
plot(rules, method = 'grouped')
subrules <- head(rules, n = 10, by = 'lift')
plot(subrules2, method = 'graph')

library(arulesViz)
remove.packages(c('arulesViz', 'data.table'))
install.packages('arulesViz', dependencies = TRUE)
library(arulesViz)
install.packages('dendextend', dependencies = TRUE)
library(arulesViz)
install.packages('mclust', dependencies = TRUE)
library(arulesViz)
install.packages('data.table', dependencies = TRUE)
library(data.table)
plot(rules, method = 'grouped')
plot(rules)


install.packages('grid', dependencies = TRUE)
library(arulesViz)
frequentsets = eclat(Groceries, parameter = list(support = 0.01, maxlen = 10))
summary(frequentsets)
inspect(sort(frequentsets, by ='support')[1:10])
rules <- ruleInduction(frequentsets, Groceries, confidence = .1)
inspect(sort(rules,by='support')[1:10])
