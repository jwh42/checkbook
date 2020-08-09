# About the Krypton Compiler

Krypton is a language, compiler, and set of runtime libraries that I
developed in my spare time. My goal was to create my own language along
with a set of runtime libraries that could be used for creating simple
graphical user interface based applications.


# Basic language elements
The Krypton language has many of the common constructs found in many other
static, compiled languages. A Krypton program can contain programmer defined
data types that are derived from a few basic types:

#### class
A structured data type stored on the heap.

#### struct
A structured data type stored on the execution stack (or as a data
member of a class).

#### enum
Data type that can be assigned to named constants.

#### delegate
Data type that references a method. Delegates provide the ability to
pass programmer defined functionality as a parameter to existing code,
rather than just simple data values.

# Programmer defined classes & structs
Programmer defined data types derived from class or struct can contain the 
following elements.

#### fields
Holds a data value for a programmer defined data type. A field can be
a simple primitive data type like integer, float, or double; or a
field can be a reference to another programmer defined data type.

#### methods
A block of instructions that operate on input parameters, data fields,
and/or other methods.
   
#### constructors
A method that will setup a new instance of a class or struct.

#### properties
A method that looks like a field from code outside of programmer
defined data type. Properties allow more flexibility for a programmer to
define whether fields are read-only or readable/writable. Properties
also provide a programmer the opportunity to perform calculations or
other steps that may be needed in order to derive the value of a
logical field.

#### indexers
A method that allows code outside of the programmer defined data type
to access values inside of a type using the array-access
"objectReference[index]" syntax
   
#### events
Special methods that external types can register a listening method
against. Whenever the event method is invoked by the type that
declared it, all listener methods are invoked in the order of
registration.

As with many other languages, each element of a programmer defined data type
can be made public so that the element can be referenced by any other data
type, protected so that only subclasses may see the element, or private so
that only the type itself will be permitted to use the element.

Krypton supports explicit subtype polymorphism: the ability for subclasses
to override the implementation of a method, property, or indexer defined in
a base class. Methods in a base class can use the "virtual" keyword to
indicate that a subclass may provide a different implementation (or the
"abstract" keyword to require subclasses to provide its own implementation).
The "override" keyword can then be used in a subclass to provide an
implementation for the polymorphic method.

# About Checkbook
Checkbook is an application that I use for tracking and balancing my bank
accounts at home.


# How to compile and run
Simply double click on "compile_CheckBook.cmd" or "run_CheckBook.cmd" in
Windows Explorer to run the Krypton compiler on the source-code files in
the "source" directory. The resulting CheckBook.exe will be put into the
"build" directory.


# How the Krypton compiler works
Currently the Krypton compiler is implemented as a front-end to the GNU C
compiler. Kryptonc.exe will internally tokenize a file, parse tokens into
an abstract syntax tree (AST), and then write the AST out as C code to be
compiled by the GNU C compiler (a copy of the necessary components of the
Windows build of GCC have been put into the "bin" directory).


# Implementation of Kryptonc
The current version of the Krypton compiler is self-defined (the compiler
is written in the same language that it recognizes). The very first version
of kryptonc was written in C++ in such a way that translation to the Krypton
language was relatively simple.


# Runtime Libraries
There are also a few runtime libraries that I have developed to go with the
language.

#### extlibs:
A library written in C which includes the compiled versions of the Cairo
(http://www.cairographics.org/), pixman, libpng, and zlib libraries along
with a few other utility functions that were more easily implemented in C.

#### Krypton:
Provides classes for basic IO, object collections, text processing, and
operating system interactions.

#### Krypton.Graphics:
A retained mode graphics library built on top of Cairo.

#### Krypton.UI:
Provides common user interface controls like buttons, lists, scroll bars
and date pickers.
