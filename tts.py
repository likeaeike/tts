#!/usr/bin/python

import pyttsx, sys, getopt

def main(argv):
    inputstring = ""
    try:
        opts, arg = getopt.getopt(argv,"hi:o:",["ifile=","ofile="])
    except getopt.GetoptError:
        print 'test.py -i <inputstring> -o <outputfile>'
        sys.exit(2)

    for opt, arg in opts:
        if opt == '-h':
            print 'tts -i <inputstring>'
            sys.exit()
        elif opt in ("-i", "--ifile"):
            inputstring = arg
            return inputstring

    print 'Input file is "', inputstring

if __name__ =="__main__":

    input = main(sys.argv[1:])

    engine = pyttsx.init()
    engine.say(input)
    engine.runAndWait()
