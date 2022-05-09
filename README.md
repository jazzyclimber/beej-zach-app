# Corner Pocket

## Goal

Create an environment (project/workspace) where Zach and BJ can work on developing new programming skills and hone existing skills through the means of a real-life project that could eventually turn into a living app in the future. 

At the end of the day it seems like we are both open to whatever the project may be. But I think it would be best if the project focused on something that could ultimately make it to market if it were polished enough. This would keep things a bit more focused and I think would help drive dirction in the actual project itself.  

## Potential Problem to solve

Currently the dance community has no consistent way of registering for dance events. It seems like each event pretty much rolls out their own frankenstein version of registration which ultimately forces it's patrons to create multiple accounts to basically fill out the same information. 

Furthermore -- marketing for these events is almost done entirely through word of mouth and facebook. Actual registration occurs on the event's website however people find out about the event through Facebook, typically. A great deal of people are looking to leave facebook but can't because that is how they get their info on dance events. 

Another pain point that exists for both event hosts and patrons is the fact that registration is typically decoupled from the actual event. Patrons have physical or digital printouts of their class schedules and any live updates to the event (think room changes, time changes, etc) are pushed from the hosts to the attendees via facebook messages. NOT IDEAL. 

## Solution

Create a web/mobile app that basically acts as a social network for dance events. 

Individuals will be able to create a "dancer" account that will allow them to store all or most of the data needed for registering for an event. They will then be able to keep track of events they are interested in attending, search for events based on style/location/price/type, and register for the event all in one place. They will also be able to see who is all attending. What teachers will be there. What classes will be offered, etc.

When it comes to the day of the event attendees will be able to access a personalized version of their class schedule directly from the app. Changes could be made in real time by the hosts and would also be reflected in the attendees schedule. 

Hosts could also have the ability of pushing out notifications through the app to attendees eliminating the need for facebook or email communcation entirely. 

------

# Dev Stuff

I think that this is, first and foremost, a learning project. However because we are potentailly using the focus of making somethign that could be market ready one day it likely makes sense to choose a stack that is scaleable and won't cause too many issues in the future.  But at the end of the day -- It could still be anything. If we choose something that is a bit newer (think front end using svelte) that just means that we will likely have to do more coding to create basically everything that we will need. We won't be able to use many open source components because they just don't exist. This is both a beneift and hinderance. But im happy with it either way. 

## Back End

### Oveview

- Kuberneties 
  - Can ensure that app stays  up even if some servers go down.
- noSQL DB?
  - Might be useful for splitting data and scaling data. If this takes off it's likely that there will be large data clusters and we would need to be able to break these apart in an easily managable way. 
- RUST for server?
  - Interest in learning the language. Could be fun!
- GraphQL?
  - Would end up making our api calls much easier to plug into -- however, from what understand this can be a headache to configure and isnt always worth the effort. That being said this makes it pretty easy to know what data you can expect to receive from a DB. For a site using many api calls/large data sets this can really help slim data down to the essentials and make things faster\

## Front Endt

### Overview 

- Svelte?
  - Is a fun language -- newer, which could pose some problems. However, the few projects that I have built in it have been an absolute joy to build. Might be worth building out in svelete even if it means we have to create all of the components by hand. 
- Tailwind?
  - Will allow for an easy to use, out-of-the-box css framework that is ready to go. We will also have access to their component library via Gary. Not sure if the library has svelte components but it wouldnt be hard to use a vue template as a starting point. 
  - We could also roll our own custom style guide -- tailwind can be a bit verbose and clunky at times. Using css properties/styleized components could make things even better. 
    - Has the potential to get messy pretty quickly. Especially if there are no ui/ux guardrails that are in place to keep things consistent. CSS custom properites would be a must in this case. 