NBEllipsisView
==============

Dots to indicate multiple items to scroll through horizontally

Demo
====

The demo/ folder contains a demo project showing NBEllipsisView in use.
Open and run it.

Usage
=====

Set all the following properties to configure the ellipsis:

    _ellipsis.currentDot = 0;
    _ellipsis.numDots = 4;
    _ellipsis.dotSpacing = 17.0;
    _ellipsis.dotImage = [UIImage imageNamed:@"ellipsis_outline"];
    _ellipsis.currentDotImage = [UIImage imageNamed:@"ellipsis_blue"];

The ellipsis isn't bound to any particular UI element, although you will
most likely use it with a UIScrollView with paging enabled. When you
need to update which ellipsis dot is selected, call:

	[_ellipsis setCurrentDot:i];

Compatibility
=============

This class has been tested back to iOS 6.1.

Implementation
==============

This class is implemented as a UIView that lays out multiple
UIImageView subviews.

License
=======

This code is released under the MIT License. See the LICENSE file for
details.