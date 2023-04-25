-- list_package.adb defines Ada linked list operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Alex Miller
-- Date: 4/8
-------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

package body List_Package is

  -----------------------------------------------------
  -- Initialize a list                                -
  -- Receive: aList, a List.                          -
  -- Pre: aList is uninitialized.                     -
  -- Post: aList%itsFirst == aList%itsLast == NULL && -
  --        aList%itsLength == 0.                     -
  -----------------------------------------------------
  procedure Init(A_List : out List) is
  begin
    A_List.Its_First := null;
    A_List.Its_Last := null;
    A_List.Its_Length := 0;
  end Init;

  ------------------------------------------------
  -- Is a list empty?                            -
  -- Receive: aList, a List.                     -
  -- Return: true, iff aList contains no values. -
  ------------------------------------------------
  function Empty(A_List : in List) return Boolean is
  begin
    return A_List.Its_Length = 0;
  end Empty;

  -------------------------------------
  -- How many values are in a list?   -
  -- Receive: aList, a List.          -
  -- Return: aList%itsLength.         -
  -------------------------------------
  function Length(A_List : in List) return Integer is
  begin
    return A_List.Its_Length;
  end Length;

  ----------------------------------------
  -- Append a value to a list.           -
  -- Receive: aValue, an integer,        -
  -- Passback: aList, containing aValue. -
  ----------------------------------------
  procedure Append(A_Value : in Integer; A_List : in out List) is
    Temp_Ptr : constant Node_Ptr := new List_Node;
  begin
    Temp_Ptr.Its_Value := A_Value;
    Temp_Ptr.Its_Next := null;

    if A_List.Its_Length = 0 then
       A_List.Its_First := Temp_Ptr;
    else
       A_List.Its_Last.Its_Next := Temp_Ptr;
    end if;

    A_List.Its_Last := Temp_Ptr;

    A_List.Its_Length := A_List.Its_Length + 1;
  end Append;

  -------------------------------------
  -- Display the values in a list.    -
  -- Receive: aList, a List.          -
  -- Output: the values in aList.     -
  -------------------------------------
  procedure Put(A_List : in List) is
     Temp_Ptr : Node_Ptr := A_List.Its_First;
  begin
     while Temp_Ptr /= null loop
	Put(' '); Put(Temp_Ptr.Its_Value);
	Temp_Ptr := Temp_Ptr.Its_Next;
     end loop;
  end Put;

  ---------------------------------------
  -- Find the maximum value in a list.  -
  -- Receive: aList, a List.            -
  -- Return: the maximum value in aList.-
  ---------------------------------------
function Max(A_List : in List) return Integer is
   Temp_Ptr : Node_Ptr := A_List.Its_First;
   TheMax : Integer := -999999;
  begin
     while Temp_Ptr /= null loop
        if Temp_Ptr.Its_Value > TheMax
	then
	   TheMax := Temp_Ptr.Its_Value;
	end if;
	Temp_Ptr := Temp_Ptr.Its_Next;
     end loop;
     return TheMax;
  end Max;

function searcher(A_List : in List; Val : in Integer) return Integer is
  Temp_Ptr : Node_Ptr := A_List.Its_First;
  Index : Integer := 0;
  begin
   while Temp_Ptr /= null loop
      if Temp_Ptr.Its_Value = Val then
         return Index;
      end if;
      Temp_Ptr := Temp_Ptr.Its_Next;
      Index := Index + 1;
   end loop;
   return -1;
  end searcher; 

  end List_Package;