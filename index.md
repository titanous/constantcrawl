---
title: Home
layout: default
---

Think of ConstantCrawl as a more complete version of the [Internet
Archive](http://archive.org/) stored on [Freenet](https://freenetproject.org/)
and accessible through your browser. ConstantCrawl keeps a copy of every page
you visit. These copies are pushed in a distributed datastore, a few of them on
every user's computer. The network replicates files confidentially and securely
based on demand. Each user contributes a very small amount of disk space and
bandwidth to the network similar to how [some music
services](http://www.csc.kth.se/~gkreitz/spotify-p2p10/spotify-p2p10.pdf) work
today. With enough users this will become a complete cache of the internet,
capturing nearly every change to every file on the public web and making them
available in real-time.


## Consequences

### No downtime

DDoS attacks and traffic spikes don't make sites unavailable. When you try to
reach a site that's unresponsive, ConstantCrawl finds the most recent cached copy
on the network and loads it instead. If a page loaded for anyone it loaded for
everyone.


### No Retractions

Once information has been pushed into the network, it's accessible to everyone.
Now retroactive changes to published works can be easily verified and accounted
for.


### Better Search Engines

ConstantCrawl's network reflects the pages people actually visit, and how often
they are visited. The pages in the ConstantCrawl network are enough to create
a free and open index of the web. Now it's easier for new search engines to
compete on product instead of data collection. More competition is better for
everyone.


### Distributed Search

It's possible to build a distributed search engine on top of ConstantCrawl. All
the data is already in the network. Peers in the network could run search nodes
as well.

## Status

ConstantCrawl is in active development.

If you'd like to contribute, join the discussion on
[Github](https://github.com/titanous/constantcrawl).
