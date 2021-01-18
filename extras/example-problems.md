---
layout: page
title: Example Linear Algebra Problems
permalink: /extras/example-problems
---

Linear algebra boasts a huge array of applications to the real world.  Below, we describe some examples of problems which can be solved using linear algebra.

## Least-squares fitting
In physics we often have to compare a **model** describing relationships between real-world data to actual data obtained from experiments.
For example, one model for nuclear decay says that the mass $$m$$ of a radioactive isotope present at time $$t$$ is given by

$$m(t) = m_02^{-t/\lambda}$$

where $$m_0$$ is the initial mass of the isotope and $$\lambda$$ is the half-life, ie. the time that it takes the mass to be reduced by half.  A lot of things can get in the way of the real-world measurements reflecting the model exactly, such as measurement error.  For example, in the laboratory we might observe the following measurements versus time

|time (days)| mass (kg)|
| --------- | -------- |
|$$t_0 = 0$$|$$m_0 = 0.9950$$|
|$$t_1 = 1$$|$$m_0 = 0.6651$$|
|$$t_2 = 2$$|$$m_0 = 0.3654$$|
|$$t_3 = 3$$|$$m_0 = 0.2150$$|
|$$t_4 = 4$$|$$m_0 = 0.1512$$|
|$$t_5 = 5$$|$$m_0 = 0.0821$$|


If we can make our model as accurate as possible, then we can use it to predict what the mass of the isotope will be in the future.  Thus we want to know the values of the constants $$m_0$$ and $$\lambda$$ so that the model most closely fits the data.  Formally, we want to find a **least squares fit** of the data to the model, ie. values of the parameters $$m_0$$ and $$\lambda$$ minimizing the root mean square error

$$E_{\text{rms}} = \left(\sum_j (m(t_j)-m_j)^2\right)^{1/2}.$$

##




