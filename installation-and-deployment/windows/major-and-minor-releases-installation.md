---
title: Major and Minor Releases Installation
page_title: Major and Minor Releases Installation
description: Major and Minor Releases Installation
slug: major-and-minor-releases-installation
tags: major,and,minor,releases,installation
published: False
position: 3
---

# Major and Minor Releases Installation
&nbsp;

Telerik® UI for Xamarin has two types of official releases – major and minor releases. Examples of major releases are R1 2019, R3 2019 and examples of minor releases are R1 2019 SP1, R2 2019 SP1 and R3 2019 SP1. Both major and minor releases are distributed as msi installation package which follows certain upgrade logic explained below.

First, major releases can be installed in parallel on the same machine. This means that when you install new major release it doesn’t uninstall your existing major releases. An example is that you can have R1 2019, R2 2019 and R3 2019 installed at the same time.

Minor releases, on the other hand, can’t be installed in parallel when they are from the same major release. This means that when you install a newer minor release it will automatically uninstall the previous version minor release which is from the same major release. An example is that if there are two minor releases for the same major release e.g. R2 2019 SP1 and R2 2019 SP2 for the R2 2019 release then you can have only one of the specified versions.

Here are some sample scenarios:

* Parallel major releases

	1. Install R2 2018

	1. Install R3 2018

	1. Install R1 2019

	Result: all three versions (R2 2018, R3 2018 and R1 2019) are installed in parallel on the machine.

* Minor releases from the same major release

	1. Install R2 2019

	1. Install R2 2019 SP1

	1. Install R2 2019 SP2

	Result: only the latest version (R2 2019 SP2) is installed on the machine.

* Minor releases from different major releases

	1. Install R1 2018

	1. Install R1 2018 SP1

	1. Install R3 2018 SP1

	Result: R3 2018 SP1 and R1 2018 SP1 are installed on the machine.

> Part of the Telerik® UI for Xamarin are the Visual Studio Extensions. Since the Visual Studio Extensions integrate into the Visual Studio IDE they don’t support parallel versions. When newer version is installed regardless of its type (major/minor) the Visual Studio Extensions get updated to the newer version.