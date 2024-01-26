*** Settings ***
Documentation     TRY/EXCEPT  STRUCTURE SYNTAX.

*** Tasks ***
First example
    TRY
            Log To Console    This is from try block.
            Fail    Error message
    EXCEPT    Error message
            Log To Console    This is from except block.        
    END

Fail example
    TRY
            Log To Console    This is from try block.
            Fail    Fail
    EXCEPT    Error message
            Log To Console    This is from except block.  
    EXCEPT    Fail
            Log To Console    "Fail except "
    END

Fail Example Whit Finally
    TRY
            Log To Console    This is from try block.
            Fail    Fail
    EXCEPT    Error message
            Log To Console    This is from except block.  
    FINALLY    
            Log To Console    This is always executed.
    END

Multiple Except Example
    TRY
            Log To Console    This is from try block.
            Fail    any error message
    EXCEPT    Error message
            Log To Console    This is from except block(error: Error message) . 
    EXCEPT    Fail
            Log To Console    This is from except block (error: Fail).
    EXCEPT    
            Log To Console   This is from except block (error: any).
    END
            Log To Console    This is after try/except block.

Multiple Except Example Whit else
    TRY
        Log To Console     This is from try block.
    EXCEPT    message
        Log To Console    Failing.....
      ELSE  
          Log To Console    From Else block. 
    END
            Log To Console    This is after TRY/EXCEPT block.