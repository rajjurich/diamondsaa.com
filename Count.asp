<%

' Every time we count a user we will put the
' latest count value in the session variable "TotalCount"
' If Session Variable TotalCount is empty
' that mean this user is new and session variable
' But if Session Variable already has the value
' Then we will not count this user again.

If IsEmpty(Session("TotalCount"))  Then  
 Call CountThisUser
End If

' It is good practice to use Functions and Sub procedure
' Because all the variables being used in sub or function
' are automatically destroyed when Sub or Function finish
' processing the code.
' So you can use these Variables again in other functions
Sub CountThisUser()

 Dim objFSO           ' FileSystemObject
 Dim objTS            ' TextStreamObject
 
 Dim strFileName      ' Counter text File Name
 Dim intOldCount
 Dim intNewCount
  
 ' Specify the Text file to store count value
 ' Because We Set Create = True
 ' File will be Created if it does not exist
 
 strFileName = Server.MapPath("Counter.txt")
 'Response.Write(strFileName)
 'Response.End()
 Set objFSO = Server.CreateObject("Scripting.FileSystemObject")
 
 If objFSO.FileExists(strFileName)  Then
  Set objTS = objFSO.OpenTextFile(strFileName, 1)
 Else
  Set objTS = objFSO.CreateTextFile(strFileName, True)
 End If
     
 If Not objTS.AtEndOfStream  Then
  intoldCount = objTS.ReadAll
 Else
  intoldCount = 0
 End If
 
 objTS.Close
    
 intNewCount = intOldCount + 1
    
 ' Store the value of intNewCount in Session Variable
 ' So you can use it on different pages
 Session("TotalCount")= intNewCount
    
 ' Write intNewCount value back to text file
 
 Set objTS = objFSO.CreateTextFile(strFileName, True)
 objTS.Write intNewCount
 
 objTS.Close
 
 Set objFSO = Nothing
 Set objTS = Nothing
End Sub
%>
