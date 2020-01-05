import sys
from os import system, name
from time import sleep
import subprocess
import os
from subprocess import Popen, CREATE_NEW_CONSOLE
import webbrowser
import io

path = os.getcwd()
def clear():
    if name == 'nt':
        _ = system('cls')
    else:
        _ = system('clear')
clear()
f = open('intro.txt', 'r')
file_contents = f.read()
print (file_contents)
f.close()

sleep(1)
clear()

def main():
    menu()

def menu():
    clear()
    f = open('moblog.txt', 'r')
    file_contents = f.read()
    print (file_contents)
    f.close()
    choice = input("""
       --- MAIN MENU ---

    1: ANDROID APP INSTALL
    2: ANDROID LOGS
    3: iOS APP INSTALL
    4: iOS LOGS
    5: EXIT

    TYPE NUMBER: """)

    if choice == "1":
        anappmenu()
    elif choice == "2":
        anlogmenu()
    elif choice == "3":
        ioappmenu()
    elif choice=="4":
        iologmenu()
    elif choice=="5":
        sys.exit
    else:
        print("""

    --- CHOSE BETWEEN 1 AND 5 ---
          --- TRY AGAIN ---
""")
        sleep(1)
        menu()

# ANDROID APP SECTION

def anappmenu():
    clear()
    f = open('moblog.txt', 'r')
    file_contents = f.read()
    print (file_contents)
    f.close()
    choice = input("""
        --- ANDROID APPS ---

    1: APP1 - ANDROID INSTALL
    2: APP2 - ANDROID INSTALL
    3: APP3 - ANDROID INSTALL
    4: APP1, 2, 3 - ANDROID INSTALL
    5: BACK

    TYPE NUMBER: """)

    if choice == "1":
        anapp1()
    elif choice == "2":
        anapp2()
    elif choice == "3":
        anapp3()
    elif choice=="4":
        anappall()
    elif choice=="5":
        menu()
    else:
        print("""

    --- CHOSE BETWEEN 1 AND 5 ---
          --- TRY AGAIN ---
""")
        sleep(1)
        anappmenu()

#def anapp1():

#def anapp2():

#def anapp3():

#def anappall():

# ANDROID LOG SECTION

def anlogmenu():
    clear()
    f = open('and.txt', 'r')
    file_contents = f.read()
    print (file_contents)
    f.close()
    choice = input("""
      --- ANDROID LOGS ---

    1: LOGS_DELETE_ANDROID
    2: LOGS_ONLINE_ANDROID
    3: LOGS_FILE_ANDROID
    4: DIR WITH LOGS
    5: BACK

    TYPE NUMBER: """)

    if choice == "1":
        anlogdel()
    elif choice == "2":
        anlogon()
    elif choice == "3":
        anlogsav()
    elif choice=="4":
        andir()
    elif choice=="5":
        menu()
    else:
        print("""

    --- CHOSE BETWEEN 1 AND 5 ---
          --- TRY AGAIN ---
""")
        sleep(1)
        anlogmenu()

def anlogdel():
    os.system("start cmd /c adb logcat -c")
    anlogmenu()

def anlogon():
    os.system("start cmd /c adb logcat")
    anlogmenu()

def anlogsav():
    Popen('cmd /c adb logcat -d -v >> logi-android/log-%date:~6,4%-%date:~3,2%-%date:~0,2%_%Time:~0,2%-%Time:~3,2%.txt', creationflags=CREATE_NEW_CONSOLE)
    os.system("start logi-android")
    anlogmenu()

def andir():
    os.system("start logi-android")
    anlogmenu()

# iOS APP SECTION

def ioappmenu():
    clear()
    f = open('moblog.txt', 'r')
    file_contents = f.read()
    print (file_contents)
    f.close()
    choice = input("""
       --- iOS APPS ---

    1: APP1 - iOS INSTALL
    2: APP2 - iOS INSTALL
    3: APP3 - iOS INSTALL
    4: APP1, 2, 3 - iOS INSTALL
    5: BACK

    TYPE NUMBER: """)

    if choice == "1":
        ioapp1()
    elif choice == "2":
        ioapp2()
    elif choice == "3":
        ioapp3()
    elif choice=="4":
        ioappall()
    elif choice=="5":
        menu()
    else:
        print("""

    --- CHOSE BETWEEN 1 AND 5 ---
          --- TRY AGAIN ---
""")
        sleep(1)
        ioappmenu()

#def ioapp1():

#def ioapp2():

#def ioapp3():

#def ioappall():

# iOS LOG SECTION

def iologmenu():
    clear()
    f = open('ios.txt', 'r')
    file_contents = f.read()
    print (file_contents)
    f.close()
    choice = input("""
      --- iOS LOGS ---

    1: LOGS_DELETE_iOS
    2: LOGS_ONLINE_iOS - CTRL + C TO TERMINATE
    3: LOGS_FILE_iOS - LOGS ARE SAVING WHILE WINDOW IS BLACK. AFTER TESTS TERMINATE WINDOW WITH CTRL+C
    4: DIR WITH LOGS
    5: BACK

    TYPE NUMBER: """)

    if choice == "1":
        iologdel()
    elif choice == "2":
        iologon()
    elif choice == "3":
        iologsav()
    elif choice=="4":
        iodir()
    elif choice=="5":
        menu()
    else:
        print("""

    --- CHOSE BETWEEN 1 AND 5 ---
          --- TRY AGAIN ---
""")
        sleep(1)
        iologmenu()

def iologdel():
    os.system("gnome-terminal idevicesyslog.c -c")
    iologmenu()

def iologon():
    os.system("gnome-terminal idevicesyslog.c -c")
    iologmenu()

def iologsav():
    Popen('cmd /c idevicesyslog.exe >> logi-ios/log-%date:~6,4%-%date:~3,2%-%date:~0,2%_%Time:~0,2%-%Time:~3,2%.txt', creationflags=CREATE_NEW_CONSOLE)
    os.system("start logi-ios")
    iologmenu()

def iodir():
    os.system("start logi-ios")
    iologmenu()

main()
