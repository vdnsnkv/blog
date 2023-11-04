+++
title = 'How the Internet works (Part 2)'
date = 2022-07-03
draft = true
+++

![The Internet map](/images/how-internet-works/internet-13-small.png)

## Introduction

In the first part, we looked at what the Internet is in terms of cables, routers and other infrastructure. We looked at who owns this infrastructure and how it is used to give access to the Internet to 28 billion different devices.

In Part 2, we will try to understand what people have come up with on top of this infrastructure so that we can find what we need on the network.

- [Имя, адрес и маршрут](#имя-адрес-и-маршрут)
- [Где оно находится](#где-оно-находится)
- [Немного истории](#немного-истории)
- [Что же делать](#что-же-делать)
- [Приватные сети](#приватные-сети)
- [Виртуальный хостинг](#виртуальный-хостинг)
- [Что мы ищем](#что-мы-ищем)
- [Маршрут или как туда добраться](#маршрут-или-как-туда-добраться)
- [Давайте поделим Интернет](#давайте-поделим-интернет)
- [Border Gateway Protocol (BGP)](#border-gateway-protocol-bgp)
- [Всё вместе](#всё-вместе)

## Name, address and route

First, let's talk a little about how we find the right place in our familiar world. Usually, it all starts with the fact that we know the name or name of the place where we want to go. Let’s say I want to go from my home to the nearest Pyaterochka store to buy groceries and cook lunch for myself.

![Route](/images/how-internet-works/internet-14.png)

To get to Pyaterochka, I need to find out the address. Let’s say the “Pyaterochka” I need has the following address: 

![Route](/images/how-internet-works/internet-14-1.png)

The address indicates first the country, then the city, then the street, and, finally, the house. All this clearly determines the place I need. If you change something in the address, it will be a different place or a non-existent place. For example, if you change the house number in the address, for example to 12, then it will be 12 Novogireevskaya Street, that is, a different house. If you change the name of the street - for example, to Tverskaya Street - you will get Tverskaya Street, 11. This will be a place in the same city, but in a completely different area. And so on, if you change the city or country in the address, then most likely there will be no such place at all.

Thus, the combination of country, city, street and house number gives us a unique combination that indicates the house we need. That is, each address corresponds to one specific house, and each house has one specific address.

To get to the right address, you need one more thing - a route. A route is a sequential set of points through which you need to pass. For example, my route to Pyaterochka could look like this:

1. Exit from the entrance
2. 3rd Vladimirskaya street
3. Metallurgov Street
4. Novogireevskaya street
5. Novogireevskaya street 11

That is, for orientation in the physical world it is important to know three things:

**Name** - What we are looking for

**Address** - Where is it located?

**Route** - How to get there

The same concepts work on the Internet, and a special system or protocol is responsible for each of them on the Internet:

**Name** - Domain Name System (DNS)

**Address** - Internet Protocol (IP)

**Route** - Border Gateway Protocol (BGP)

First, let's figure out how Internet addresses work.

### Where is it located

We have a good idea of ​​how an address works in our physical world. If YouTube were a physical place where you come and watch videos, then its address would probably look something like this:

![Address 1](/images/how-internet-works/internet-15.png)

But since YouTube is NOT a physical place, but a video resource on the Internet, its address looks like this:

![Address 2](/images/how-internet-works/internet-16.png)

This is the IP address. IP is the abbreviation for the protocol that governs addressing on the Internet. This protocol is called not very intricately - Internet Protocol.

For people from the IT sector, who quite often come across IP addresses, these addresses are already quite familiar. But at the first meeting, it seems to me that they may have many questions:

- What do all these numbers mean?
- And why are there numbers here anyway?
- Why can't we make some more understandable address?
- How can you even figure out where it is from this address?

In fact, this address is very clear. It’s just that it’s understandable not to a person, but to a computer. An IP address is needed so that computers can find each other on the vast Internet, so IP addresses must be well understood primarily by computers, and people have to adapt. Even writing an IP address as four groups of three digits (as above) is a very “humanized” notation. On the computer itself, the address looks like this: 

![Address 3](/images/how-internet-works/ip-2.png)

Computers generally only understand bits and the binary number system, so each IP address is a set of 32 zeros or ones. For us, people, it is divided into four parts, and even translated into the decimal system familiar to us. It’s still not very convenient, but working with four numbers is still easier than remembering 32 zeros and ones every time.

By the way, since an IP address consists of 32 zeros and ones, this means that there can be a total of 4.3 billion unique IP addresses. At the same time, at the very end of the first part, where there was a beautiful picture with a visualization of the Internet, we talked about the fact that 28 billion devices are now connected to the Internet. How so? There are 28 billion devices, but only 4 billion addresses? After all, in theory, every device on the network should have a unique address so that others can find it?

To understand how this happened and how the Internet still continues to work, although there are 7 times more devices than unique addresses, you need to delve a little into history.

### A little history

The Internet dates back to the Cold War, when the first networks were invented by researchers at the US Department of Defense. They wanted to create a communications system that would continue to function even when much of the system was destroyed. For example, as a result of a nuclear war.

One of these systems, which eventually formed much of the basis of the Internet, was called ARPANET. It was created at the end of 1969 and existed until 1990.

![ARPANET 1981](/images/how-internet-works/arpanet_L81Dec.jpeg)

[[Original](http://mercury.lcs.mit.edu/~jnc/tech/jpg/ARPANet/L81Dec.jpg)]

In this diagram we can see how many nodes there were on the ARPANET around the time the IP protocol was created. Once again, in this diagram ALL nodes of the largest network at that time are a little more than 200 computers. Of course, when you come up with addresses for networks and the largest network at that time has 200 computers, then 4.3 billion seems to you to be a sufficient number of addresses with a huge margin.

It is also important to remember that ARPANET was developed for the needs of the military, and, of course, was not intended for widespread use. Even NSFNET, which was the ideological successor to ARPANET and included many more nodes, could not even come close to running out of IP addresses.

When the IP protocol was created, no one imagined that computer networks would eventually grow into the global Internet and that they would grow so quickly.

So I inserted a meme here, which, it seems to me, shows well what people thought about the number of addresses on the Internet when they came up with IP.

![IP meme](/images/how-internet-works/internet-17.png)

Explaining memes, of course, is such a thing, but here’s the thing. IP originally envisioned three types of networks. Now it doesn’t matter at all what these types are, just look at the scale of the numbers. In short, IP envisioned three types of networks, the smallest ones with a maximum of 254 nodes, the larger ones with up to 65,534 nodes, and the SUPER HUGE ones with almost 17 million.

Therefore, when we talk about why IP addresses were created the way they were, we need to remember that at the time of their creation, people probably thought that they had come up with ALL the addresses that humanity would ever need. At the time the IP protocol was created, no one expected that within 30 years all IP addresses would run out.

However, after 30 years the addresses ran out, and this problem had to be solved somehow.

### What to do

People realized there was a problem quite early on. Already in the 1990s, a new standard for Internet addresses was developed. This is also an IP, but version 6. This version already supports an unimaginably large number of addresses - 3.4 × 10³⁸.

This is 100,000,000,000,000,000,000,000,000,000 times more than the IPv4 currently in use.

The implementation of IPv6 is taking place throughout the Internet, but, unfortunately, it is going very slowly. Currently, about a third of devices on the Internet use IPv6.

But, of course, IPv6 alone would not be enough to solve the address problem, because a complete transition to IPv6 requires that every device on the Internet switch to using the new version of the protocol. It was immediately clear that this was a very long process, and existing addresses began to run out already in the early 2010s, when IPv6 was just beginning to be implemented.

IPv6 is needed in order to increase the available set of addresses. But, besides this, you can also come up with different ways to use existing IPv4 addresses more economically.

### Private networks

One such way is to use one address for many devices. This can be done using private networks.

![Private networks](/images/how-internet-works/internet-18.png)

Let's say we have a router to which 4 devices are connected. The router has a public IP address that is visible to the entire Internet. But between the router and the devices, an internal (or private) network is configured with its own set of IP addresses, which are not visible to the rest of the Internet.

Since this is an internal network, not accessible to other devices on the Internet, you can use any of the 4 billion addresses in it and there will be no problems. Whatever addresses we use on the internal network, for the rest of the Internet our 4 devices will have the same public address, and thus we will “save” IP addresses.

### Shared hosting

Another method by which you can reduce the need for IP addresses is shared hosting.

![Virtual hosting](/images/how-internet-works/internet-19.png)

Let's say we have 4 different sites. We can place these sites on one server, which will have one IP address. The server will figure out when to show which site, the main thing is that we don’t need a separate IP address for each site.

All these methods so far help to manage 4 billion IPv4 addresses. The problem will finally be solved when most of the Internet switches to IPv6, but for now - private addresses for everyone!

### What are we looking for

So, let’s say we’ve figured out the Internet addresses. But how can I find out what the address is for the site I want to open?

![Internet](/images/how-internet-works/internet-1.png)

Remember we had this picture at the beginning? There is a user who wants to go to YouTube to watch videos there. What does he do for this?

One of the options could be, for example, this: the user goes to the browser, types it in the address bar youtube.comand presses Enter. Then some short time passes and YouTube opens.

And here the question arises. As we remember, we use IP addresses on the Internet. And if YouTube opened for us, it means our computer or browser somehow converted the address youtube.cominto an IP address, found it on the network and downloaded the necessary data. How did he do it?

There is a whole special system for this on the Internet. It's called Domain Name System - or DNS for short.

![Contacts](/images/how-internet-works/internet-20.png)

This system works like an Internet telephone directory or a phone contact list. All these things have approximately the same idea: we can, knowing the name or name of the company, find out the phone number or address. DNS is essentially a global contact list for the Internet.

![DNS](/images/how-internet-works/internet-19.png)

If you remember, a little earlier we had this picture. With the help of the DNS system, it is precisely what is configured at which address to look for a specific domain. With its help you can configure different configurations. You can do it like here in the picture - when one address corresponds to several names. You can do it the other way around - so that one name corresponds to several addresses.

### Route or how to get there

We have already understood how addresses on the Internet work and how to get an address from a name. Great! Let's say we know the address. How to get to it?

To get to an address in our familiar world of cities, streets and houses, we need to know the sequence: where to go, where to turn, what transport to take at what stop, etc.

For example, as we remember, my route to the store looked like this:

1. Leave the entrance
2. 3rd Vladimirskaya street
3. Metallurgov Street
4. Novogireevskaya street
5. Novogireevskaya street 11

What about the Internet? In fact, it's about the same.

![Star-schema](/images/how-internet-works/internet-21.png)

Let's look at a simple case first. Let's say there are only 5 computers on our network, and they are all connected to one router. How can we make it so that any computer on the network can connect to another at its address? In this case, the simplest possible scheme works - each computer tells the router its address, and it turns out that the router knows the addresses of all computers. All routes are very simple - to get to any address on our network you need to connect to the router and tell it the address where you want to go, and the router itself will connect you to the desired computer.

But what if the network is larger and more complex, for example the same ARPANET?

![ARPANET 1981](/images/how-internet-works/arpanet_L81Dec.jpeg)

In fact, the same scheme works here as in our network of five computers. Yes, there are far from five nodes in the ARPANET and the routes are more complicated, but still the routes to each network node can fit in the memory of one router. And then everything is the same: we will need to connect to the router, and it will give the route further.

And, in fact, it worked like that for a long time, until the number of addresses on the network began to grow very quickly. At some point, routes no longer fit into the memory of even the most powerful routers. What can we do, what can we come up with?

### Let's divide the Internet

And you can come up with, for example, such a solution. Let our entire Internet be divided into separate large networks. These large networks will know the routes to each other, but not to each specific node within the other network. Each network will appear as one to the rest of the Internet. These large networks will exchange routing information with each other and thus any one of the large networks will know how to get to any other large network.

![Autonomous Systems](/images/how-internet-works/internet-22.png)

These “large networks” of the Internet are called Autonomous Systems. At the borders of these systems there are special routers that exchange information with each other about routes to other systems. These are very powerful routers that are capable of storing several route options to other autonomous systems and choosing the optimal one.

Due to this organization of the Internet, we, as they say, reduce the task to the previous one. Only before this (for example, in ARPANET) our routers knew the routes to each specific node in the network, but now the routers know the route to each Autonomous System. There are “only” a couple of tens of thousands of autonomous systems on the Internet, so routes to them at the very least fit into the memory of powerful routers.

### Border Gateway Protocol (BGP)

Autonomous systems need to know how to get to each other. But the Internet is constantly changing - somewhere the backbone cable stopped working, somewhere the provider had an accident or simply increased load. Therefore, routes on the Internet are constantly changing. This means that Autonomous Systems must somehow be able to exchange up-to-date information about routes. There is a special protocol for this - Border Gateway Protocol or BGP for short.

![BGP](/images/how-internet-works/internet-23.png)

The BGP protocol allows Autonomous Systems to exchange routes with each other. Route exchange is based on sets of IP addresses that are assigned to each Autonomous System.

For example, Autonomous System 1 (AS1) is assigned addresses that begin with 173.194.221. AS1 informs neighbors that addresses like 173.194.221.*** are its addresses, neighbors inform their neighbors, etc. After some time, all Autonomous Systems know that if they receive traffic with an address that begins with 173.194.221, then it needs to be directed towards Autonomous System 1.

Autonomous systems are Internet providers, networks of large companies, universities, etc., in general, those who have the technical ability to manage a large set of IP addresses.

In this diagram, AS1 could be, for example, Google, AS2 could be Rostelecom, and AS3 could be some small Internet provider in the city where you live.

BGP is an important protocol, it allows Autonomous Systems to find other Autonomous Systems across the vast Internet. The protocol is important, and therefore the cost of errors in its settings is very high. Bugs in BGP can cause entire huge networks to disappear from the Internet. For example, this happened with Facebook’s Autonomous System in early October 2021. Errors in BGP settings led to the fact that other Autonomous Systems stopped seeing Facebook's network. As a result, all their services were unavailable for 6 hours. At the same time, the servers themselves were working and were ready to receive traffic, but no one knew where to send this traffic.

### Together

So, we learned how the Internet works physically, then we figured out how names, addresses and routes work. Now let's try to combine all this into one picture.

![Amazing map](/images/how-internet-works/internet-24.png)

Let's say that somewhere on the planet, let's say in Russia, our subscriber is sitting in the network of a third-level provider and wants to watch a video on YouTube.

His computer is connected to a router, which is connected to the global network through several layers of other routers.

The user types youtube.comin the browser line. Through the DNS system, the computer finds out the IP address for youtube.comand sends a request there.

The request travels through the provider's network outward and goes to Google's Autonomous System through the backbone providers that carry traffic to North America.

The request passes along the route that the router was able to pave thanks to the exchange of information between Autonomous Systems via the BGP protocol.

The request comes to the YouTube server inside the Google Autonomous System. The server responds to the request and the happy user watches his favorite cat videos.

{{< youtube v3nGDM-HxEE >}}

### Materials

1. [A series of short videos about the Internet](https://roadmap.sh/guides/what-is-internet)
2. [Article on Vox](https://www.vox.com/2014/6/16/18076282/the-internet)
4. [Wired article about Google's submarine cables](https://www.wired.com/story/google-cramming-more-data-new-atlantic-cable/)
5. [Infrapedia — map of global Internet backbone networks](https://www.infrapedia.com/)
6. [The Opte Project — Internet visualization project](https://www.opte.org/the-internet)
7. [ARPANET diagrams over the years](http://mercury.lcs.mit.edu/~jnc/tech/arpalog.html)