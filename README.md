
# Table of Contents

1.  [SRFI 173: Hooks](#org3071646)
    1.  [Abstract](#org55b9e70)
    2.  [Rationale](#org56337de)
    3.  [Specification](#orgefa09c9)
    4.  [Implementation Notes](#org84c1b74)
    5.  [Acknowledgements](#org7ec0231)
    6.  [Author](#orgc4e657c)
    7.  [Copyright](#org5e151bc)


<a id="org3071646"></a>

# SRFI 173: Hooks


<a id="org55b9e70"></a>

## Abstract

This library describes a mechanism known as hooks. Hooks are a certain kind of extension point in a program that allows interleaving the execution of arbitrary code with the execution of the program without introducing any coupling between the two.

For more information see: [SRFI 173: Hooks](https://srfi.schemers.org/srfi-173/srfi-173.html)


<a id="org56337de"></a>

## Rationale

The use of hooks is pervasive in GNU Emacs and many other programs that offer some "plugin" mechanism that is built on top a facility similar to what this library offers.

While building programs, there is a need to offer extension points to allow the user to extend and customize the execution of the program in way that avoids coupling. This library wants to help with that.


<a id="orgefa09c9"></a>

## Specification

This specification describes one disjoint type called hook.

    (make-hook arity)

Create a hook object for storing procedures of ARITY. The return value is a hook object.

    (hook? obj)

Return #t if obj is a hook. Otherwise, it returns #f.

    (list->hook arity lst)

Create a hook with the given procedures LST that must have an arity equal to ARITY. The return value is a hook object.

    (list->hook! hook lst)

Replace procedures in HOOK by the procedures in LST. The return value is unspecified

    (hook-add! hook proc)

Add the procedure PROC to the HOOK object. The return value is not specified. An implementation may check that the arity of PROC is equal to the arity of the HOOK.

    (hook-delete! hook proc)

Delete the procedure PROC from the HOOK object. The return value is not specified.

    (hook-reset! hook)

Remove all procedures from the HOOK object. The return value is not specified.

    (hook->list hook)

Convert the list of procedures of HOOK object to a list.

    (hook-run hook . args)

Apply all procedures from HOOK to the arguments ARGS. The order of the procedure application is not specified. The return value is not specified. It is an error if the
length of ARGS is not equal to the arity of the HOOK object.

In a Scheme with invokable objects, hooks can invoked directly.


<a id="org84c1b74"></a>

## Implementation Notes

The reference implementation from SRFI-173 was used verbatim, with the exception of a single call to `assume` from [SRFI 145](https://srfi.schemers.org/srfi-145/srfi-145.html), which was replaced with `assert`.


<a id="org7ec0231"></a>

## Acknowledgements

This specification is based on the GNU Guile module called [hook](https://www.gnu.org/software/guile/manual/html_node/Hooks.html#Hooks).


<a id="orgc4e657c"></a>

## Author

The SRFI-173 library author is Amirouche Boubekki.  It was ported to Chicken by Sergey Goldgaber.


<a id="org5e151bc"></a>

## Copyright

Copyright © Amirouche Boubekki (2019).

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice (including the next paragraph) shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
