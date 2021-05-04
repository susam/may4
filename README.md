May the Forth Be With You
=========================

This project celebrates the [Star Wars Day] with the [Forth]
programming language.

May 4 is the Star Wars Day. The date (May the Fourth) is a pun on the
popular Star Wars catchphrase, "May the Force be with you." Forth, the
programming language, is named so as a shortened form of the word
"Fourth". The name stood for "fourth generation". Quoting from
[Forth - The Early Years][hopl]:

> The file holding the interpreter was labeled FORTH, for 4th (next)
> generation software - but the operating system restricted file names
> to 5 characters.

So this repository consisting of Forth source code to print an
slightly altered Star Wars catchphrase using ASCII stars (asterisk) is
like a double pun! Or is that a triple pun?

[Star Wars Day]: https://en.wikipedia.org/wiki/Star_Wars_Day
[Forth]: https://en.wikipedia.org/wiki/Forth_(programming_language)
[hopl]: https://web.archive.org/web/20060615025259/http://www.colorforth.com/HOPL.html


Source
------

[[may4.fs](may4.fs)]

```forth
: stars
   0  do  [char] * emit  loop  ;

: lines
   0  do  cr  loop  ;

: print
   dup 40 > if  40 - lines  else
   dup 20 > if  20 - spaces  else
      stars
   then then  ;

: start
   0  do  print  loop  ;

41 11 37 11 36 5 28 41 5 27 5 31 5 27 5 33 5 28 41 5 31 5 27 5 31 5 31
5 28 41 5 33 5 25 5 33 5 30 5 28 41 5 35 5 23 5 35 5 29 5 28 41 5 35 5
23 5 35 5 27 9 26 41 5 35 5 23 5 35 5 26 5 21 5 25 41 5 35 5 23 5 35 5
25 5 23 5 24 41 5 35 5 24 5 33 5 25 5 25 5 23 41 5 35 5 25 5 31 5 25 5
27 5 22 41 5 35 5 27 5 27 5 26 5 29 5 21 41 5 35 5 30 11 28 5 31 5 43
2 24 2 25 2 25 2 26 1 26 1 28 8 23 7 33 41 2 24 2 25 2 25 2 25 3 24 3
33 2 22 1 25 2 33 41 8 25 2 25 2 24 2 21 2 22 2 21 2 29 5 23 7 33 41 2
24 2 25 2 25 2 23 2 24 3 23 2 31 2 22 1 25 2 33 41 2 24 2 22 8 22 2 22
2 26 1 25 2 24 8 23 7 22 11 43 3 27 3 27 3 26 3 28 3 26 8 35 3 41 3 27
3 27 3 27 3 27 3 24 3 26 3 33 3 41 3 27 3 27 3 28 3 26 3 23 3 28 3 32
3 41 3 27 3 27 3 29 3 25 3 22 3 30 3 31 3 41 13 27 3 29 11 22 3 30 3
25 9 41 13 27 3 27 13 22 3 30 3 25 9 41 3 27 3 27 3 26 3 28 3 22 3 30
3 31 3 41 3 27 3 27 3 26 3 28 3 23 3 28 3 32 3 41 3 27 3 22 13 22 13
24 4 25 3 23 13 41 3 27 3 22 13 24 11 26 8 25 13 43 11 22 8 22 2 24 2
25 2 30 2 23 2 25 2 22 2 23 1 23 2 41 2 22 2 24 2 25 2 30 2 24 7 23 2
22 3 22 2 41 5 22 8 25 2 29 4 24 2 21 2 24 2 21 2 21 2 21 2 41 2 22 2
24 2 25 2 28 2 22 2 24 3 25 4 23 4 41 8 22 2 24 2 22 8 24 2 24 2 24 1
26 3 25 3 473

start
bye
```


Output
------

[[may4.txt](may4.txt)]

```
***     ***      *    **    **    ********  **    **  ********
****   ****     ***    **  **        **     **    **  **
** ** ** **    ** **    ****         **     ********  *****
**  ***  **   *******    **          **     **    **  **
**   *   **  **     **   **          **     **    **  ********  ***********


*************     ********      ***********    *************  ***       ***
*************   ***     ****    *************  *************  ***       ***
***            ***        ***   ***        ***      ***       ***       ***
***           ***          ***  ***        ***      ***       ***       ***
*********     ***          ***  *************       ***       *************
*********     ***          ***  ***********         ***       *************
***           ***          ***  ***     ***         ***       ***       ***
***            ***        ***   ***      ***        ***       ***       ***
***             ***      ***    ***       ***       ***       ***       ***
***               ********      ***        ***      ***       ***       ***


***********  *******   ********    **     *      **  **  ********  **    **
             **     *  **           **   ***    **   **     **     **    **
             *******   *****         ** **  ** **    **     **     ********
             **     *  **             ***    ***     **     **     **    **
             *******   ********        *      *      **     **     **    **


*****           *****        ***********          *****               *****
 *****         *****      *****       *****       *****               *****
  *****       *****     *****           *****     *****               *****
   *****     *****     *****             *****    *****               *****
    *****   *****     *****               *****   *****               *****
     ***** *****      *****               *****   *****               *****
      *********       *****               *****   *****               *****
        *****         *****               *****   *****               *****
        *****          *****             *****     *****             *****
        *****           *****           *****       *****           *****
        *****             *****       *****           *****       *****
        *****                ***********                 ***********
```


How to Run
----------

 1. Install GForth.

    On macOS, enter the following command if you have [Homebrew]:

    ```sh
    brew install gforth
    ```

    On Debian, Ubuntu, or another Debian-based Linux system, enter the
    following command:

    ```
    sudo apt-get install gforth
    ```

    For other systems, see <https://gforth.org/>.

 2. Run the Forth program in this repository:

    ```sh
    gforth may4.fs
    ```

 3. Enjoy!

[Homebrew]: https://brew.sh/

You can also run it online [on Replit here][Replit]:

[Replit]: https://replit.com/@susam/MayTheForthBeWithYou


Thank You
---------

Thank you for visiting this project. I hope this encourages you to
[learn a little bit of Forth][Starting Forth].

[Follow me on Twitter][Twitter].

[Starting Forth]: https://www.forth.com/starting-forth/
[Twitter]: https://twitter.com/intent/follow?screen_name=susam
