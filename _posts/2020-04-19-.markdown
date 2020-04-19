 1 ---
 2 layout: post
 3 title: EmulationStation Woes
 4 ---
 5 This is my first real entry so I'll start with somethings I've finished recently and somethings I haven't
 6 I've been working with a raspberry and although it is a rather cliche project I've made and arcade machine
 7 The exterior design may not have been mine but I found the parts and wired everything together. At first I
 8 didn't want to use retropie due to it being overused so initally I wanted to setup emulation station with
 9 raspbian on my own. First thing I did was clone respository and compile yet to my suprise emulation station wasn't having that
10 I ran the cmake command as one normally does but I got half a dozen errors. Eventually after 2 hours of digging through old
11 forums and github issues I found issue #435 and used the proposed solution and it compiled without error.
12
13 This wasn't the end. Then, as I ran it, it came up with a screen with a white background and a large gray square the took up a quarter of
14 the screen.
15
16 Queue another two hours of pouring through old forums and github issues and while can't remember where I found the solution I
17 did find it.
18
19 It turned out that emulation station used OpenGL and would work on the Pi with an Xsession window manager. So I said ok and set the pi to boot into
20 a terminal emulator and for once I was able to loadup emulation station and configure my controller but I was far from done.
21 I began to install the emulators I needed and thats where the biggest issue comes in. I needed to find a way to start xsession, minimally, for one
22 app.
23
24 I'm not as good at a command prompt as I'd like to be so more stack overflow and I got xsession to start a new window manager but that wasn't the end.
25 I needed to get it to immediatly boot into MAME which proved harder than anticipated and so after countless attempts I eventually gave up and gave in and accepted
26 retropie instead of setting it up myself. Maybe Ill come back to this issue later.
27

