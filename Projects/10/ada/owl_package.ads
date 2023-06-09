-- owl_package.ads gives Owl-related declarations,
--  and derives Owl from Bird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Alex Miller
-- Date: 4/6
---------------------------------------------------

with Flying_Package; use Flying_Package;

package Owl_Package is

type Owl_Type is new Flying_Type with private;

 ----------------------------------------------------
 -- A Owl's Call (Over-rides Bird.Call())           -
 -- Receive: An_Owl, an Owl_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------

function  Call(A_Owl : in Owl_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Owl                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Owl, an Owl_Type.                    -
 -- Return: "Owl".                                   -
 -----------------------------------------------------

 function  Type_Name(A_Owl : in Owl_Type) return String;

private
     type Owl_Type is new Flying_Type with
          record
            null;
          end record;


end Owl_Package;
