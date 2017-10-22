# MATLAB Fall 2017 – Research Plan

> * Group Name: The Krillians
> * Group participants names: Jules Bachmann, Anna Jaeggi, Felix Sarnthein, Laura Wülfroth
> * Project Title: Krill Swarm Behaviour

## General Introduction

The Antarctic krill are small crustaceans who live in swarms in the Southern Ocean. They are on the bottom of the food chain, so quite a lot of animals that live down south in Antarctica depend on their existence. Therefore Antarctic krill is very important. Because of that importance a lot of research projects were made to observe them, so there is already a lot of data. But it would be awesome not only to measure the movement of the swarms but to simulate where they could go, depending on changes we have like warmer water or less of their primary food source. But to get that we need to understand how krill behaves in a swarm and which variables are the reason krill swarms move around in the sea.


## The Model

We want to study how the movement of a swarm depends on the individuals. There can be various variables that can influence the swarm like the swimming speed, the variation of speed, the variation of swimming directions, etc. This will affect the speed and also the direction of the swarm. Further it is possible to get current involved in various directions to analyse the effect on the moving swarm.

The model will use some simple rules that krill use when swimming around as described by Hofmann [2]. This will get as close as possible to the real krill swarm behaviour depending on their moving around so we can get data about moving patterns and speed as a whole. 

We will start with just simulating the swarm with our rules. Further we will let it move and try what variables we can change to get a swarm moving in one direction. Then we can start to analyse the variables of the individuals compared to that swarm movement. At last we will analyse the formations and speed of individuals and swarm when current gets involved or even food and predators.


## Fundamental Questions

The general question is about the dependencies of the movement of individuals and the movements of the swarm.

First just the swarm:
* How does a swarm stays a swarm?
* What variables affect the movement of a swarm? 
* How does the swimming speed and speed variation affects the movement of the swarm?
* Are there formations when they are about to move?
	
With current:
* What changes the current on these variables?
* Again are there new formations to move around?
* And are there formations to stay at one place when there is current?


## Expected Results

We expect that high variance in swimming speed and slow individuals slow down the speed of the swarm and that the current has a huge impact on the direction because krill is not that fast.


## References 

To get the general information about krill we will use the book "Biology and Ecology of Antarctic Krill" and papers they refer to.

[1] Siegel, Volker: Biology and Ecology of Antarctic Krill, ISBN 978-3-319-29277-9, 2016 <br />
[2] Hofmann et al.: Lagrangian modelling studies of Antarctic krill ( Euphausia superba ) swarm formation, ICES J. Marine Science 61, 617, https://doi.org/10.1016/j.icesjms.2004.03.028, 2004


## Research Methods

We will use an Agent-Based Model because every individual krill can be seen as an agent which interacts with others and has its own rules when moving around. It is a good Model to see the dependencies of individuals and a group.
