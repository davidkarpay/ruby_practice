#Basic calculator project
include Math
def cube(n)
    n**3
end

def squareroot(n)
    #Returns the square root of the number n. If n < 0, 
    #then return the string "NAN" (Not A Number)
    n < 0 ? "NAN": Math.sqrt(n)
end

def negate(n)
    #Return the negative value of the argument 'n'.
    -n
end

def factorial(n)
    #Return n factorial
    #The factorial of anything <= 1 is 1.
    #The factorial of any integer greater than 1 is the product of all
    #the integers from 1 to the number itself. For example,
    #4 factorial = 1 x 2 x 3 x 4 = 24.
    n < 1 ? 1 : n.downto(1).inject(:*)
end
