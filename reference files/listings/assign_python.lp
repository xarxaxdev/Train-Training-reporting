#script (python)
import clingo

def contains(a, b):
    if str(b) in str(a):
        return clingo.Number(1)
    else:
        return clingo.Number(0)
#end.