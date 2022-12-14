# get_latest_yuzu_mainline

## What is this?
This is a script that grabs the latest `yuzu-mainline` artifact. In this initial script, it's
tuned only to the Windows MSVC zip release. Once it downloads, it opens it in Explorer so the
user can copy the files over.

## Why?
Mostly laziness. I just wanted to have something automatically grab the latest Yuzu so I can
play with the newest features and see how emulation improves over time. This saves me the effort
of going to the GitHub page every time.

## What's Yuzu?
Check it out. It's a Nintendo Switch emulator that works, and is progressing unbelievably fast.

## Why Windows?
I primarily play my emulated Switch games (which I legally own copies for) on my desktop. I will
be getting a Steam Deck soon, so I might try to figure out how to make it work for Linux. It
shouldn't be too hard to write companion scripts for each OS (or even change methods based on OS).

## Can I do some of that work?
Sure, just submit a PR and we can see how things work. I do have a Manjaro linux box I could test
on, but I genuinely don't want to go through the rigamarole of doing the work on that box myself.

## Why Ruby?
I like Ruby. It's got a lot of syntactic sugar, and the language meshes well with my brain. Feel
free to fork this if you want to do the same work in a different lang.
