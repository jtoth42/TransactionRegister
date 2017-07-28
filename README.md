## Transaction Register:

For keeping checkbook in balance.

### Description

An Xcode project that generates a macOS application.  (Project name is *CheckingS*, because this version was updated to use Swift.)

### Motivation

Vestiges of Hypercard Stack from almost 30 years ago.
User interface can be adjusted in storyboard to suit taste.

### Using

Main window tabs between checks, deposits and debits.
Detail view is laid out like a check, a la Hypercard.
Auxiliary window provides for adding sources, and lists all transactions by source.
When adding the first check, the check number needs to be entered manually.

### Architectural Details

Was already an Xcode/Core Data/ObjC/Bindings macOS application.
Most of the work is done by the array controllers, with most of their settings set in storyboard.
A value transformer changes sign to store debit amounts as negative, while positively displayed/entered in check/debit tabs.
Besides Swift, also updated to use Tab View Controller.
Coding probably not as elegant as could be.
Application size was 100 kb before Swift, now 10 mb.

### Requirements

Works on current (July 2017) versions of macOS and Xcode. Compatability with earlier or later versions unknown.
