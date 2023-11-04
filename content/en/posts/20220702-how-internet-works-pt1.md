+++
title = 'How the Internet works (Part 1)'
date = 2022-07-02
draft = true
+++

![The Internet map](/images/how-internet-works/internet-13-small.png)

## Введение
I work as a web developer, and my work is closely related to the Internet. However, even I often catch myself not knowing how some things work on this very Internet. In this article we will try to figure out what is there and how. Let's start with what the Internet is for all of us as users.

- [What is the Internet?](#что-такое-интернет)
- [Internet at our home](#интернет-у-нас-дома)
- [Интернет в шкафу](#интернет-в-шкафу)
- [Интернет в ещё одном шкафу](#интернет-в-ещё-одном-шкафу)
- [Иерархия провайдеров](#иерархия-провайдеров)
- [Опорная сеть Интернета](#опорная-сеть-интернета)
- [Соединяем всё](#соединяем-всё)

## What is the Internet?
For us, as users, the Internet is a box, a white rectangle with the inscription “Internet”.

![A very simplified diagram for connecting to YouTube](/images/how-internet-works/internet-1.png)

You can find a lot of interesting things in this rectangle, and we somehow connect to this rectangle and go, for example, to watch a video on YouTube (I don’t know about you, but I always connect to YouTube with exactly this expression on my face).

We use the Internet for many hours every day. According to statistics, the average user spends more than 6 hours a day online [ [source](https://wearesocial.com/uk/blog/2022/04/more-than-5-billion-people-now-use-the-internet/) ]. However, we usually know little and rarely think about what is inside. This article is my attempt to figure out what is inside this rectangle.

## Part 1 (Hardware-ish)

First, let’s figure out how the Internet works at a purely physical level, or 'what each cable is plugged into'. To do this, let's think back to how we usually connect to the Internet at.

![YouTube connection diagram but with home router](/images/how-internet-works/internet-2.png)

### Internet at our home

We always have some kind of device - a physical thing - a computer, laptop, smartphone, in general, everything that is sometimes called “hardware”. And inside our hardware there is usually a special chip (or a piece of a large chip), which is called a network card and is responsible for connecting to the network. Network cards come in thousands of different types, and they can connect to the network wired or wirelessly. Nowadays, most often this is a wireless connection, via the familiar WiFi. Here is an example of a network card, or rather a wireless module, in an Apple laptop. [[source](https://www.ifixit.com/Guide/MacBook+Pro+15-Inch+Retina+Display+Mid+2015+AirPort+Board+Replacement/55921)]

![Wireless module from MacBook Pro 2015](/images/how-internet-works/ifixit_wifi_card.png "Wireless module from MacBook Pro 2015")

This wireless module can connect via radio signal to another device, and this is called “connecting to WiFi”.

The device to which our network card connects is, most often, a router. The router looks something like this: 

![Home router](/images/how-internet-works/internet-3.png)

This is a special device into which the Internet comes at on one side, and the Internet goes out on the other side. It goes to clients (or, devices) connected to this router via cable or WiFi.

Basically, for us as users, the Internet connection ends there. The very last thing we see is the provider’s cable, which goes through the wall of the apartment somewhere into the entrance. Let's see what's on the other end of this cable and where the Internet comes from.

### Internet in a cabinet

If you live in an apartment building, like me, then most likely in your entrance, basement, attic, or somewhere nearby there is a cabinet with a lot of wires. At best, this cabinet looks something like these photos.

![Racks with routers in apartment buildings](/images/how-internet-works/internet-4.png)

But it can also look like this. 

![Router barely hanging on a bundled cables](/images/how-internet-works/internet-5.jpg)

It all depends on your provider and the specialists who connected your entrance.

Regardless of what it looks like, these cabinets contain routers (or, in other words, routers) of the provider. There are so many wires because connections come here from all the apartments in the house or entrance. You can plug from 8 to 48 cables into one router. Therefore, if there are many apartments in the house, then you need several routers, for which it is convenient to make such a common closet. In smaller houses, you can get by with just one router.

![Router from an apartment building cabinet](/images/how-internet-works/internet-6.png "Router from an apartment building cabinet")

These routers look more serious than our white box with yellow sockets, but in general the story with this router is the same as with the router in the apartment. On the one hand, the Internet comes into the router, and on the other, it goes to the clients. The clients for this router are the same routers in our apartments.

Of course, if you dive into the details, you can find quite a lot of differences between routers in closets and our “apartment” routers, but now this is not very important to us. For now, we need to figure out where the Internet is in this closet, where it comes from.


### Internet in another cabinet

The cabinets in apartment building receive the Internet via cable, most often fiber optic. This cable runs to the Internet provider's data center, where it plugs into yet another router (surprise!).

![Router cabinet in a Data Center](/images/how-internet-works/internet-7.webp "Yet another router cabinet")

Usually quite a lot of houses are connected to the provider, so at this level of connection you also need a lot of routers, and they are also inserted into special cabinets. Only these cabinets are no longer located somewhere in the entrance, but in a special room, and entire houses are already connected to these routers. For example, each yellow optical wiring in the picture above is one apartment building.

So, so far we have the following diagram for our provider’s network:

![Simplified diagram of Internet provider network](/images/how-internet-works/internet-8.png)

- each client has a router in their apartment
- this router connects to another router in the closet in the entrance
- the closet in the entrance is connected to an even cooler router in the provider’s data center

The provider needs this system to distribute and manage client access to the Internet. But the provider does not own the Internet. So does the provider get this Internet from somewhere else? Where does the provider's traffic come from?

### Provider hierarchy

The provider receives traffic from other providers, or, if a little more broadly, from telecom operators. The entire Internet is all telecom operators and the transfer of traffic between them. If we take any two telecom operators, then there can be 3 options for interaction between them:

1. The operators are not related in any way
2. One operator sells traffic to another
3. Operators exchange traffic with each other (this is called peering)

Everything is clear with the first point, but the hierarchy of telecom operators is based on points 2 and 3. This hierarchy is conditional, there are no strict criteria, but the division is quite often used. There are Tier 1, Tier 2 and Tier 3 operators.

![Meme demostrating of ISPs](/images/how-internet-works/internet-9.png)

**Tier 3** operators have access to the Internet only through the purchase of traffic from other operators.

**Tier 2** operators have access to part of the network through peering (traffic exchange) with other operators, and purchase access to the rest of the Internet from other operators.

**Tier 1** operators do not pay anyone for traffic, they only exchange traffic with each other and sell it to other operators.

There are about 10-15 Tier 1 operators in the world, and each of them has access to the entire Internet. Tier 1 providers have the ability to transmit traffic between different countries and continents due to the fact that they own or lease backbone cables.

### Internet backbone

Backbone cables (also known as backbone networks, also known as the backbone of the Internet) physically connect parts of the Internet located in different countries and on different continents. On a map, backbone networks look something like this.  [[Infrapedia](https://www.infrapedia.com/app)]

![Internet backbone map](/images/how-internet-works/internet-10.png "Internet backbone map")

Approximately - because no one knows exactly what they look like, there is no central repository of information about all main cables. The core network allows traffic to be transmitted around the world. For example, if you, while in Russia, want to open a website located on a server in the USA, then your traffic will go through the backbone network. Or rather, through one of the main cables laid along the bottom of the Atlantic Ocean.

![Intercontinental submarine cables](/images/how-internet-works/internet-11.png "Intercontinental submarine cables")

And this is what undersea cables look like. [ [Wired article](https://www.wired.com/story/google-cramming-more-data-new-atlantic-cable/) ] They have several different layers of protection and fiber optics inside. The throughput of modern cables is measured in tens of Tbit/s. Backbone cables not only run along the ocean floor, there are also land-based backbone networks. For example, in Russia the backbone cable network looks like this.

![Internet backbone map for Russia](/images/how-internet-works/internet-12.png "Internet backbone map for Russia")

[[Full map in PDF](https://www.comnews.ru/sites/default/files2019/vision-files/mapmagistr2020-2.pdf)]

These networks are operated by major Internet providers, sometimes called regional Tier 1 operators. These are operators that are not Tier 1 operators at the global level and buy transit traffic, but within their region they do not pay anyone for traffic. In Russia, regional Tier 1 operators are at least Rostelecom, TransTelecom and the big three cellular operators.


### Connecting everything

Okay, let's say we understand a little about what backbone networks look like. Now let's go back to the beginning of our conversation and try to connect together everything that we have learned so far.

We saw how the provider’s network is structured inside - each client has a router at home, this router is connected to the cabinet with routers in the entrance, the cabinets in the entrance are connected to the router in the data center.

Providers (or rather telecom operators) come in different levels. They buy, sell and exchange traffic.

The largest tier 1 operators transmit traffic between countries and continents via backbone networks, sometimes via cables at the bottom of the ocean.

So where does the Internet ultimately come from? Where is its source? The whole point is that nowhere. There is no Internet source where it is mined and then sent to consumers. Asking where the source of the Internet is is like asking where the source of mail or telephone communication is. The Internet is a set of devices that want to communicate with each other, a huge infrastructure for providing communication and a large set of technologies that allow this infrastructure to be used.

To understand how big and complex the Internet is, let’s remember our provider network diagram. There were only 8 clients there. In reality, each provider has from several thousand to tens of millions of clients. And there are tens of thousands of providers all over the world. And not only you and I need the Internet in our houses and apartments, companies and organizations also need it. Large IT companies very often build entire separate data centers just for themselves, and they also need the Internet. And we haven’t even started about [IoT](https://en.wikipedia.org/wiki/Internet_of_things) yet. As a result, it all connects into a huge network that covers the entire planet. 

![The Internet map from The Opte Project](/images/how-internet-works/internet-13.png "The Internet map from The Opte Project")

[[Original (10000х8000)](http://renderbot.nyc1.opte.org/20210116.1200.attempt_1/attempt_1_run_20210116.1200.coords_10000x8000_light.png)]

[[The Opte Project](https://www.opte.org/the-internet)]

And in this network there are now approximately 28,000,000,000 devices online, and this number continues to grow.

So, 28 billion devices is certainly good, but how can we find, for example, YouTube among all these devices?

We will try to figure this out in the second part.
