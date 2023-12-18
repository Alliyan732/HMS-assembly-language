
	                            ;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                ;@@ ______________________________________________________________________ @@
                                ;@@|                                                                      |@@
                                ;@@|                 *** MICROPROCESSORS AND ASSEMBLY LANGUAGE ***        |@@
                                ;@@|                           (SEMISTER PROJECT)                         |@@
                                ;@@|                                                                      |@@
                                ;@@|                                                                      |@@
                                ;@@|                   SUBMITTED BY: AALLIYAN WAHEED ALVI                 |@@
                                ;@@|                   SUBMITTED TO: MR. TAIMUR SHEHZAD                   |@@
                                ;@@|                                                                      |@@
                                ;@@|                                                                      |@@
                                ;@@|      PROJECT NAME:                                                   |@@
                                ;@@|                    ### HOSPITAL MANAGEMENT SYSTEM ###                |@@
                                ;@@|                                                                      |@@
                                ;@@|                                                                      |@@
                                ;@@|      DATE: 30-JUNE, 2021.                                            |@@
                                ;@@|                                                                      |@@
                                ;@@|                                     ~Code By Alliyan Waheed Alvi     |@@
                                ;@@|______________________________________________________________________|@@
                                ;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@





INCLUDE Irvine32.inc
.data
    menu BYTE " ",0dh,0ah,0dh,0ah,
    "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",0dh,0ah,
    "@@|                    		                                         |@@",0dh,0ah,
    "@@|                           *** WELCOME TO ***                         |@@",0dh,0ah,
    "@@|                  *** HOSPITAL MANAGEMENT SYSTEM ***                  |@@",0dh,0ah,0
    menu2 BYTE  "@@|                               		                         |@@",0dh,0ah,
    "@@|                        ### Register Your Account ###                 |@@",0dh,0ah,
    "@@|                                           	                         |@@",0dh,0ah,
    "@@|                                                                      |@@",0dh,0ah,
    "@@|                                                                      |@@",0dh,0ah,0
    menu3 BYTE "@@|                                                                      |@@",0dh,0ah,
    "@@|                                                                      |@@",0dh,0ah,
    "@@|   Please Register Your Account, then Login Below...                  |@@",0dh,0ah,
    "@@|                                                                      |@@",0dh,0ah,0
    menu4 BYTE "@@|     Press Any Key to continue...                                     |@@",0dh,0ah,
    "@@|                                                                      |@@",0dh,0ah,
    "@@|                                     ~Code By Alliyan Waheed Alvi     |@@",0dh,0ah,
    "@@|______________________________________________________________________|@@",0dh,0ah,
    "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",0dh,0ah,0




    header BYTE " ",0dh,0ah
           BYTE " ",0dh,0ah
           BYTE " ",0dh,0ah
           BYTE " ",0dh,0ah
           BYTE "               *###* HOSPITAL MANAGEMENT SYSTEM *###*",0dh,0ah
           BYTE "                           *** DASHBOARD ***" ,0dh,0ah
           BYTE " " ,0dh,0ah,0
        
    dashboard1 BYTE "Please,  Choose from the following Options: ",0dh,0ah
            byte " _________________________________________________________________ ",0dh,0ah
            byte "|                                           	                  |",0dh,0ah
            byte "|             1  >> Enter into Patients Database                  |",0dh,0ah,0
    dashboard2 BYTE       "|             2  >> Enter into Doctors Database                   |",0dh,0ah
            byte "|             3  >> Information About Hospital                    |",0dh,0ah
            byte "|             0  >> Exit the Program                              |",0dh,0ah
            byte "|_________________________________________________________________|",0dh,0ah
            byte " ",0dh,0ah,0
            
    

    pheader BYTE " ",0dh,0ah
           BYTE " ",0dh,0ah
           BYTE " ",0dh,0ah
           BYTE " ",0dh,0ah
           BYTE "               *###* HOSPITAL MANAGEMENT SYSTEM *###*",0dh,0ah
           BYTE "                       *** PATIENT DASHBOARD ***" ,0dh,0ah
           BYTE " " ,0dh,0ah,0


            ;patient dashboard frame

            patientDashboard BYTE "Please, Choose from the following Options: ",0dh,0ah
            byte " _________________________________________________________________ ",0dh,0ah
            byte "|                                           	                  |",0dh,0ah
            byte "|             1  >> Add New Patient Record                        |",0dh,0ah
            byte "|             2  >> List of patients in the hospital              |",0dh,0ah
            byte "|             3  >> Search a patient with his ID                  |",0dh,0ah
            byte "|             4  >> Discharge a patient                           |",0dh,0ah
            byte "|             5  >> Priority wise appointments of Patients        |",0dh,0ah
            byte "|             6  >> Generate Patient Bill                         |",0dh,0ah
            byte "|             7  >> Go back to Dashboard                          |",0dh,0ah
            byte "|_________________________________________________________________|",0dh,0ah
            byte " ",0dh,0ah,0
            



           dheader BYTE " ",0dh,0ah
           BYTE " ",0dh,0ah
           BYTE " ",0dh,0ah
           BYTE " ",0dh,0ah
           BYTE "               *###* HOSPITAL MANAGEMENT SYSTEM *###*",0dh,0ah
           BYTE "                       *** PATIENT DASHBOARD ***" ,0dh,0ah
           BYTE " " ,0dh,0ah,0
            ;doctor dashboard frame

            doctorDashboard BYTE "Please, Choose from the following Options: ",0dh,0ah
            byte " _________________________________________________________________ ",0dh,0ah
            byte "|                                           	                  |",0dh,0ah
            byte "|             1  >> Add New Doctor Record                         |",0dh,0ah
            byte "|             2  >> List of Doctors in the hospital               |",0dh,0ah
            byte "|             3  >> Search a Doctor with his ID                   |",0dh,0ah
            byte "|             4  >> Remove a doctor's record from the list        |",0dh,0ah
            byte "|             5  >> Go back to Dashboard                          |",0dh,0ah
            byte "|_________________________________________________________________|",0dh,0ah
            byte " ",0dh,0ah,0




            HospitalInformation BYTE " ",0dh,0ah
            BYTE "          HOSPITAL DETAILS! ",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "............................................",0dh,0ah
            byte "Hospital Wards: 10",0dh,0ah
            byte "-----------------------",0dh,0ah
            byte " Out Patient Door ward: 4",0dh,0ah
            byte " In Patient Door ward: 3",0dh,0ah
            byte " Emergency ward: 3",0dh,0ah
            byte "Total Rooms Awailable: 50",0dh,0ah
            byte "Total Number of Patients in the Hospital: 5",0dh,0ah
            byte "Total Number of Doctors in the Hospital: 5",0dh,0ah
                        byte "-----------------------",0dh,0ah

            byte "Project Info: ",0dh,0ah
            byte "The project Hospital Management system includes registration ",0dh,0ah
            byte "of patients, Doctors, and rooms storing their details ",0dh,0ah
            byte "and assigned rooms into the system, and also computerized billing ",0dh,0ah
            byte "of every patient and the staff automatically. The data can be retrieved easily. Hospital ",0dh,0ah
            byte "Management System is powerful, flexible, and easy to use and is designed and developed to ",0dh,0ah


            byte "*******  Modules  ****",0dh,0ah

            byte "Patient Module",0dh,0ah
            byte "Doctors Module ",0dh,0ah
            byte "Billing System ",0dh,0ah
            byte "Hospital Info",0dh,0ah
            byte " ",0dh,0ah


            byte "         *******  Procedures  ****",0dh,0ah

            byte " ***** Patient Proc **** ",0dh,0ah

            byte "Sub Procedures: ",0dh,0ah
            byte "Add patiend Record",0dh,0ah
            byte "List of patients",0dh,0ah
            byte "Search patients",0dh,0ah
            byte "Discharge patients",0dh,0ah
            byte "Patients Appointments",0dh,0ah
            byte "Patient Bills",0dh,0ah
            
            byte " ***** Doctor Proc **** ",0dh,0ah

            byte "Sub Procedures: ",0dh,0ah
            byte "Add Doctor Record",0dh,0ah
            byte "List of Doctors",0dh,0ah
            byte "Search Doctor",0dh,0ah
            byte "Discharge Doctor",0dh,0ah
            byte "Doctors Appointments",0dh,0ah
            BYTE " ",0dh,0ah,0

            byte " ***** Hospital Info Proc **** ",0dh,0ah

            byte "Sub rocedures: ",0dh,0ah
            byte "HospitalInfo proc",0dh,0ah


           billreport BYTE " ",0dh,0ah
           BYTE " ",0dh,0ah
           BYTE " ",0dh,0ah
           BYTE " ",0dh,0ah
           BYTE "               *###* HOSPITAL MANAGEMENT SYSTEM *###*",0dh,0ah
           BYTE "                       *** PATIENT Bill ***" ,0dh,0ah
           BYTE " " ,0dh,0ah

            BYTE "                      Your Bill Report: ",0dh,0ah
            byte " _________________________________________________________________________ ",0dh,0ah
            byte "|                                           	                          |",0dh,0ah
            byte "|                                           	                          |",0dh,0ah
            byte "|                                           	                          |",0dh,0ah
            byte "|             ROOM RENT SERVICES           >> 5000 Rs                     |",0dh,0ah
            byte "|             ICU CHARGES                  >> 7000 Rs                     |",0dh,0ah
            byte "|             NURSING / RMO SERVICES       >> 3000 Rs                     |",0dh,0ah
            byte "|             MEDICINE & CONSUMABLES       >> 5500 Rs                     |",0dh,0ah
            byte "|             SURGERY / PROCEDURE CHARGES  >> 5700 Rs                     |",0dh,0ah
            byte "|             PACKAGE CHARGES              >> 2000 Rs                     |",0dh,0ah
            byte "|             Total Amount                 >> 28200 Rs                    |",0dh,0ah
            byte "|                                                                         |",0dh,0ah
            byte "|                                                                         |",0dh,0ah
            byte "|_________________________________________________________________________|",0dh,0ah
            byte " ",0dh,0ah,0



   
                        ; **************  Prompts  *****************

               error BYTE "invalid entry",0dh,0ah,0
               doctordashboardmsg BYTE "Doctor Dashboard",0dh,0ah,0
               hospitalinfomsg BYTE "hospital info",0dh,0ah,0
               programendedmsg BYTE "Cloosing system... You are Exit!",0dh,0ah,0
               patientrecordmsg BYTE "patient record",0dh,0ah,0
               patientlistmsg BYTE "list of patients",0dh,0ah,0
               patientsearchmsg BYTE "searchpatient",0dh,0ah,0
               patientdischargemsg BYTE "discharge patient",0dh,0ah,0
               patientappointmentsmsg BYTE "patient appointments",0dh,0ah,0
               patientbillmsg BYTE "patient bill",0dh,0ah,0
               patientbackmsg byte "go back to the dashboard",0dh,0ah,0
               treatementprompt byte "Enter Patient Treatement",0dh,0ah,0
               medicineprompt byte "Enter Patients Medicines",0dh,0ah,0

               
               idprompt byte "Enter Patient Id:",0dh,0ah,0
               nameprompt byte "Enter Patient Name:",0dh,0ah,0
               ageprompt byte "Enter Patient Age:",0dh,0ah,0
               genderprompt byte "Enter Patient Gender:",0dh,0ah,0
               bloodgroupprompt byte  "Enter Patient Blood Group:",0dh,0ah,0
               diseaseprompt byte  "Enter Patient Earlier Disease If Any:",0dh,0ah,0
               contactprompt byte "Enter Patient Contact No:",0dh,0ah,0
               addressprompt byte "Enter Patient Address:",0dh,0ah,0
   
               didprompt byte "Enter Doctor Id:",0dh,0ah,0
               dnameprompt byte "Enter Doctor Name:",0dh,0ah,0
               dageprompt byte "Enter Doctor Age:",0dh,0ah,0
               dgenderprompt byte "Enter Doctor Gender:",0dh,0ah,0
               dcontactprompt byte "Enter Doctor Contact No:",0dh,0ah,0
               daddressprompt byte "Enter Doctor Address:",0dh,0ah,0
               dqualificationprompt byte "Enter Doctor Qualification:",0dh,0ah,0

               successprompt byte "Data Entered Successfully!!!",0dh,0ah,0
               hr byte "--------------------------------------",0dh,0ah,0
               dataprompt byte "---- *** Your Data *** ----",0dh,0ah,0
   

               ListOfPatientsprompt byte " ",0dh,0ah,0
               BYTE "********** LIST OF PATIENTS IN OUR HOSPITAL **********",0dh,0ah
               byte " ",0dh,0ah,0
            
               ListOfDoctorssprompt byte " ",0dh,0ah,0
               BYTE "********** LIST OF DOCTORS IN OUR HOSPITAL **********",0dh,0ah
               byte " ",0dh,0ah,0

                        ; **************  Prompts End *****************




choice BYTE "Enter your choice: ",0dh,0ah,0
choiceInput DWORD ?


            ; Billing Arrays
             patientBillArray DWORD OFFSET pb_id, OFFSET pb_name, OFFSET pb_treatement, OFFSET pb_disease, OFFSET pb_medicine
             pb_id BYTE 20 DUP(?)
             pb_name BYTE 20 DUP(?)
             pb_treatement BYTE 20 DUP(?)
             pb_disease BYTE 20 DUP(?)
             pb_medicine BYTE 20 DUP(?)
             

             ; patients Arrays
             patientArray1 DWORD OFFSET p_id, OFFSET p_name, OFFSET p_age, OFFSET p_gender, OFFSET p_blood_group, OFFSET p_earlier_disease, OFFSET p_contact, OFFSET p_address
             p_id BYTE 20 DUP(?)
             p_name BYTE 20 DUP(?)
             p_age BYTE 20 DUP(?)
             p_gender BYTE 20 DUP(?)
             p_blood_group BYTE 20 DUP(?)
             p_earlier_disease BYTE 20 DUP(?)
             p_contact BYTE 20 DUP(?)
             p_address BYTE 20 DUP(?)
             

             ; patients array 2
             patientArray2 DWORD OFFSET p_id2, OFFSET p_name2, OFFSET p_age2, OFFSET p_gender2, OFFSET p_blood_group2, OFFSET p_earlier_disease2, OFFSET p_contact2, OFFSET p_address2
             p_id2 BYTE "2",0dh,0ah,0
             p_name2 BYTE "Saba Noor",0dh,0ah,0
             p_age2 BYTE "60",0dh,0ah,0
             p_gender2 BYTE "Female",0dh,0ah,0
             p_blood_group2 byte "A+",0dh,0ah,0
             p_earlier_disease2 byte "Blood Pressure",0dh,0ah,0
             p_contact2 BYTE  "03485571367",0dh,0ah,0
             p_address2 BYTE  "CB-1238/4, Afshan Colony, Rawalpindi",0dh,0ah,0
             


             ; patients array 3
             patientArray3 DWORD OFFSET p_id3, OFFSET p_name3, OFFSET p_age3, OFFSET p_gender3, OFFSET p_blood_group3, OFFSET p_earlier_disease3, OFFSET p_contact3, OFFSET p_address3
             p_id3 BYTE "3",0dh,0ah,0
             p_name3 BYTE "Hamza Shahid",0dh,0ah,0
             p_age3 BYTE "60",0dh,0ah,0
             p_gender3 BYTE "male",0dh,0ah,0
             p_blood_group3 byte "A+",0dh,0ah,0
             p_earlier_disease3 byte  "Blood Pressure",0dh,0ah,0
             p_contact3 BYTE  "03485571367",0dh,0ah,0
             p_address3 BYTE  "CB-1238/4, Afshan Colony, Rawalpindi",0dh,0ah,0
             


             ; patients array 4
             patientArray4 DWORD OFFSET p_id4, OFFSET p_name4, OFFSET p_age4, OFFSET p_gender4, OFFSET p_blood_group4, OFFSET p_earlier_disease4, OFFSET p_contact4, OFFSET p_address4
             p_id4 BYTE "4",0dh,0ah,0
             p_name4 BYTE "Taimur Shehzad",0dh,0ah,0
             p_age4 BYTE "60",0dh,0ah,0
             p_gender4 BYTE "male",0dh,0ah,0
             p_blood_group4 byte "A+",0dh,0ah,0
             p_earlier_disease4 byte "Blood Pressure",0dh,0ah,0
             p_contact4 BYTE "03485571367",0dh,0ah,0
             p_address4 BYTE  "CB-1238/4, Afshan Colony, Rawalpindi",0dh,0ah,0
             


             ; patients array 5
             patientArray5 DWORD OFFSET p_id5, OFFSET p_name5, OFFSET p_age5, OFFSET p_gender5, OFFSET p_blood_group5, OFFSET p_earlier_disease5, OFFSET p_contact5, OFFSET p_address5
             p_id5 BYTE "2",0dh,0ah,0
             p_name5 BYTE "Junaid Khan",0dh,0ah,0
             p_age5 BYTE "60",0dh,0ah,0
             p_gender5 BYTE "male",0dh,0ah,0
             p_blood_group5 byte "A+",0dh,0ah,0
             p_earlier_disease5 byte "Blood Pressure",0dh,0ah,0
             p_contact5 BYTE  "03485571367",0dh,0ah,0
             p_address5 BYTE  "CB-1238/4, Afshan Colony, Rawalpindi",0dh,0ah,0
             


             ; Doctor Arrays
             doctorArray1 DWORD OFFSET d_id, OFFSET d_name, OFFSET d_age, OFFSET d_gender, OFFSET d_qualification,  OFFSET d_contact, OFFSET d_address
             d_id BYTE 20 DUP(?)
             d_name BYTE 20 DUP(?)
             d_age BYTE 20 DUP(?)
             d_gender BYTE 20 DUP(?)
             d_qualification BYTE 20 DUP(?)
             d_earlier_disease BYTE 20 DUP(?)
             d_contact BYTE 20 DUP(?)
             d_address BYTE 20 DUP(?)
             


             ; doctor array 2
             doctorArray2 DWORD OFFSET d_id2, OFFSET d_name2, OFFSET d_age2, OFFSET d_gender2, OFFSET d_qualification2,  OFFSET d_contact2, OFFSET d_address2
             d_id2 BYTE "2",0dh,0ah,0
             d_name2 BYTE "Saba Noor",0dh,0ah,0
             d_age2 BYTE "60",0dh,0ah,0
             d_gender2 BYTE "Female",0dh,0ah,0
             d_qualification2 byte "MBBS, Heart Specialist",0dh,0ah,0
             d_contact2 BYTE  "03485571367",0dh,0ah,0
             d_address2 BYTE  "CB-1238/4, Afshan Colony, Rawalpindi",0dh,0ah,0
             


             ; doctor array 3
             doctorArray3 DWORD OFFSET d_id3, OFFSET d_name3, OFFSET d_age3, OFFSET d_gender3, OFFSET d_qualification3,  OFFSET d_contact3, OFFSET d_address3
             d_id3 BYTE "2",0dh,0ah,0
             d_name3 BYTE "Rashid Khan",0dh,0ah,0
             d_age3 BYTE "60",0dh,0ah,0
             d_gender3 BYTE "male",0dh,0ah,0
             d_qualification3 byte "MBBS, Heart Specialist",0dh,0ah,0
             d_contact3 BYTE  "03485571367",0dh,0ah,0
             d_address3 BYTE  "CB-1238/4, Afshan Colony, Rawalpindi",0dh,0ah,0
             


             ; doctor array 4
             doctorArray4 DWORD OFFSET d_id4, OFFSET d_name4, OFFSET d_age4, OFFSET d_gender4, OFFSET d_qualification4,  OFFSET d_contact4, OFFSET d_address4
             d_id4 BYTE "2",0dh,0ah,0
             d_name4 BYTE "Hamad Tufail",0dh,0ah,0
             d_age4 BYTE "60",0dh,0ah,0
             d_gender4 BYTE "male",0dh,0ah,0
             d_qualification4 byte "MBBS, Heart Specialist",0dh,0ah,0
             d_contact4 BYTE  "03485571367",0dh,0ah,0
             d_address4 BYTE  "CB-1238/4, Afshan Colony, Rawalpindi",0dh,0ah,0
             


             ; doctor array 2
             doctorArray5 DWORD OFFSET d_id5, OFFSET d_name5, OFFSET d_age5, OFFSET d_gender5, OFFSET d_qualification5,  OFFSET d_contact5, OFFSET d_address5
             d_id5 BYTE "2",0dh,0ah,0
             d_name5 BYTE "Hamza khan",0dh,0ah,0
             d_age5 BYTE "60",0dh,0ah,0
             d_gender5 BYTE "male",0dh,0ah,0
             d_qualification5 byte "MBBS, Heart Specialist",0dh,0ah,0
             d_contact5 BYTE  "03485571367",0dh,0ah,0
             d_address5 BYTE  "CB-1238/4, Afshan Colony, Rawalpindi",0dh,0ah,0
             
             
    


    ;mov esi, DWORD PTR [accountNumbers + ebx*4]



                                            ############## Code Section ##############


.code
main PROC
    
    ; ################# Menu #################

    ; moving cursor position
    ;mov dh,10
    ;mov dl,20
    ;call Gotoxy

    ; printing string
    mov edx, offset menu
    call WriteString
    
    ; printing string
    mov edx, offset menu2
    call WriteString
 
    ; printing string
    mov edx, offset menu3
    call WriteString

    ; printing string
    mov edx, offset menu4
    call WriteString


    ; ################# Main Dashboard #################

    dashboardJump:      ; ##### dashboard jump #####

    ; printing string
    mov edx, offset header
    call WriteString

    ; printing string
    mov edx, offset dashboard1
    call WriteString

    ; printing string
    mov edx, offset dashboard2
    call WriteString
    


     mov edx,offset choice
     call WriteString 
     call ReadInt ;Reads the integer value from console and moves it to eax.

      const0 = 0
      const1 = 1
      const2 = 2
      const3 = 3

      CMP eax, const0
      je PE
        mov ebx, 1
        JMP END_IF0
      PE:
        ; printing string
        mov edx, offset programendedmsg
        call WriteString
      END_IF0: 


     CMP eax, const1

      je PD                         ;PD = Patient dashboard
        mov ebx, 2
        JMP END_IF1
      PD:
        call patient
      END_IF1:
      
     
     CMP eax, const2
      je Ddash
        mov ebx, 3
        JMP END_IF2
      Ddash:
        call Doctor
        JMP dashboardJump
      END_IF2:
      
      CMP eax, const3
      je HI
        mov ebx, 3
        JMP END_IF3
      HI:
        call HospitalInfo
        JMP dashboardJump
      END_IF3:
      
      JMP dashboardJump
 exit
main ENDP



patient PROC
    
    ;################## Patient Dashboard #################

    pdashboardJump:      ; ##### patient dashboard jump #####

    ; printing string
    mov edx, offset pHeader
    call WriteString

       
    ; printing string
    mov edx, offset patientDashboard
    call WriteString


    
     mov edx,offset choice
     call WriteString 
     call ReadInt ;Reads the integer value from console and moves it to eax.

    ; *** if condition for patient record ***

      PRconst0 = 0
      PRconst1 = 1
      PRconst2 = 2
      PRconst3 = 3
      PRconst4 = 4
      PRconst5 = 5
      PRconst6 = 6
      PRconst7 = 7
      PRconst8 = 8

    CMP eax, PRconst1

    je PR
      mov ebx, 2
      JMP END_IF_PR
    PR:
      call AddPatientRecord
      jmp pdashboardJump
    END_IF_PR:
    
    
    ; *** if condition for patient list ***

    CMP eax, PRconst2

    je PL
      mov ebx, 3
      JMP END_IF_PL
    PL:
      call patientList1
      jmp pdashboardJump
    END_IF_PL:
    
    ; *** if condition for patient search ***

    CMP eax, PRconst3

    je PS
      mov ebx, 4
      JMP END_IF_PS
    PS:
      call patientSearch
      jmp pdashboardJump
    END_IF_PS:
    
    ; *** if condition for patient discharge ***

    CMP eax, PRconst4

    je PD
      mov ebx, 5
      JMP END_IF_Pdischarge
    PD:
      call patientDischarge
      jmp pdashboardJump
    END_IF_Pdischarge:
    
    ; *** if condition for patient appointments ***

    CMP eax, PRconst5

    je PA
      mov ebx, 6
      JMP END_IF_Pappoint
    PA:
      call patientAppointments
      jmp pdashboardJump
    END_IF_Pappoint:
    
    ; *** if condition for patient billing ***

    CMP eax, PRconst6

    je PB
      mov ebx, 7
      JMP END_IF_Pbilling
    PB:
      call patientBilling
      jmp pdashboardJump
    END_IF_Pbilling:
    
    ; *** if condition for patient GoBack ***

    CMP eax, PRconst6

        ret
patient ENDP






; *********** nested patient module functions ************

AddPatientRecord PROC
    
    
    ; *********** loop to print patitent add record array *********
    ;printing string
    mov edx, offset idprompt
    call WriteString
    mov  edx,OFFSET p_id 
    mov ecx, sizeof p_id 
    call ReadString
    
    ;printing string
    mov edx, offset nameprompt
    call WriteString
    mov edx,OFFSET p_name  
    mov ecx, sizeof p_name
    call ReadString
    
    ;printing string
    mov edx, offset ageprompt
    call WriteString
    mov  edx,OFFSET p_age  
    mov ecx, sizeof p_age 
    call ReadString

    ;printing string
    mov edx, offset genderprompt
    call WriteString
    mov  edx,OFFSET p_gender  
    mov ecx, sizeof p_gender 
    call ReadString
    
    ;printing string
    mov edx, offset bloodgroupprompt
    call WriteString
    mov  edx,OFFSET p_blood_group
    mov ecx, sizeof p_blood_group
    call ReadString
        
    ;printing string
    mov edx, offset diseaseprompt
    call WriteString
    mov  edx,OFFSET p_earlier_disease   
    mov ecx, sizeof p_earlier_disease
    call ReadString

    ;printing string
    mov edx, offset contactprompt
    call WriteString
    mov  edx,OFFSET p_contact 
    mov ecx, sizeof p_contact
    call ReadString

    ;printing string
    mov edx, offset addressprompt
    call WriteString
    mov  edx,OFFSET p_address  
    mov ecx, sizeof p_address
    call ReadString


    ;printing string
    mov edx, offset hr
    call WriteString;
    
    ;printing string
    mov edx, offset dataprompt
    call WriteString

    mov ecx, 7
    mov ebx, 0
    gaith:
        mov esi, DWORD PTR [patientArray1 + ebx*4]
        mov edx, esi
        call WriteString
        call crlf
        add ebx, 1
        loop gaith
    
    ;printing string
    mov edx, offset hr
    call WriteString;

    ;printing string
    mov edx, offset successprompt
    call WriteString;

        ret
AddPatientRecord ENDP

patientList1 PROC
    
    ;printing string
    mov edx, offset listofpatientsprompt
    call WriteString

        mov ecx, 7
        mov ebx, 0
    pdataloop1:
        mov esi, DWORD PTR [patientArray1 + ebx*4]
        mov edx, esi
        call WriteString
        call crlf
        add ebx, 1
        loop pdataloop1

    ;printing string
    mov edx, offset hr
    call WriteString;
    
        mov ecx, 7
        mov ebx, 0
    pdataloop2:
        mov esi, DWORD PTR [patientArray2 + ebx*4]
        mov edx, esi
        call WriteString
        call crlf
        add ebx, 1
        loop pdataloop2

    ;printing string
    mov edx, offset hr
    call WriteString;
        
        mov ecx, 7
        mov ebx, 0
    pdataloop3:
        mov esi, DWORD PTR [patientArray3 + ebx*4]
        mov edx, esi
        call WriteString
        call crlf
        add ebx, 1
        loop pdataloop3

    ;printing string
    mov edx, offset hr
    call WriteString;
    
        
        mov ecx, 7
        mov ebx, 0
    pdataloop4:
        mov esi, DWORD PTR [patientArray4 + ebx*4]
        mov edx, esi
        call WriteString
        call crlf
        add ebx, 1
        loop pdataloop4

    ;printing string
    mov edx, offset hr
    call WriteString;
    
        
        mov ecx, 7
        mov ebx, 0
    pdataloop5:
        mov esi, DWORD PTR [patientArray5 + ebx*4]
        mov edx, esi
        call WriteString
        call crlf
        add ebx, 1
        loop pdataloop5

    ;printing string
    mov edx, offset hr
    call WriteString;

        ret
patientList1 ENDP


patientSearch PROC

    ;printing string
    mov edx, offset patientsearchmsg
    call WriteString

     mov edx,offset choice
     call WriteString 
     call ReadInt ;Reads the integer value from console and moves it to eax.

      psconst1 = 1
      psconst2 = 2
      psconst3 = 3
      psconst4 = 4
      psconst5 = 5

      CMP eax, psconst1
      je PatientSearch1
        mov ebx, 2
        JMP END_IF01
      PatientSearch1:
        ;printing string
        mov edx, offset hr
        call WriteString;

        mov ecx, 7
        mov ebx, 0
        l1:
            mov esi, DWORD PTR [patientArray1 + ebx*4]
            mov edx, esi
            call WriteString
            call crlf
            add ebx, 1
            loop l1
    
        ;printing string
        mov edx, offset hr
        call WriteString;
      END_IF01: 

    
        
        CMP eax, psconst2
      je PatientSearch2
        mov ebx, 3
        JMP END_IF02
      PatientSearch2:
        ;printing string
        mov edx, offset hr
        call WriteString;

        mov ecx, 7
        mov ebx, 0
        l2:
            mov esi, DWORD PTR [patientArray2 + ebx*4]
            mov edx, esi
            call WriteString
            call crlf
            add ebx, 1
            loop l2
    
        ;printing string
        mov edx, offset hr
        call WriteString;
      END_IF02: 
      
      CMP eax, psconst3
      je PatientSearch3
        mov ebx, 4
        JMP END_IF03
      PatientSearch3:
        ;printing string
        mov edx, offset hr
        call WriteString;

        mov ecx, 7
        mov ebx, 0
        l3:
            mov esi, DWORD PTR [patientArray3 + ebx*4]
            mov edx, esi
            call WriteString
            call crlf
            add ebx, 1
            loop l3
    
        ;printing string
        mov edx, offset hr
        call WriteString;
      END_IF03: 
      
      CMP eax, psconst4
      je PatientSearch4
        mov ebx, 5
        JMP END_IF04
      PatientSearch4:
        ;printing string
        mov edx, offset hr
        call WriteString;

        mov ecx, 7
        mov ebx, 0
        l4:
            mov esi, DWORD PTR [patientArray4 + ebx*4]
            mov edx, esi
            call WriteString
            call crlf
            add ebx, 1
            loop l4
    
        ;printing string
        mov edx, offset hr
        call WriteString;
      END_IF04: 
      
      CMP eax, psconst5
      je PatientSearch5
        mov ebx, 6
        JMP END_IF05
      PatientSearch5:
        ;printing string
        mov edx, offset hr
        call WriteString;

        mov ecx, 7
        mov ebx, 0
        l5:
            mov esi, DWORD PTR [patientArray4 + ebx*4]
            mov edx, esi
            call WriteString
            call crlf
            add ebx, 1
            loop l5
    
        ;printing string
        mov edx, offset hr
        call WriteString;
      END_IF05: 

    
        ;printing string
        mov edx, offset successprompt
        call WriteString


        ret
patientSearch ENDP


patientDischarge PROC

    ;printing string
    mov edx, offset patientdischargemsg
    call WriteString



        ret
patientDischarge ENDP



patientAppointments PROC

    ;printing string
    mov edx, offset patientappointmentsmsg
    call WriteString

        ret
patientAppointments ENDP

patientBilling PROC

    ;printing string
    mov edx, offset patientbillmsg
    call WriteString





        ; *********** loop to print patitent add record array *********
    ;printing string
    mov edx, offset idprompt
    call WriteString
    mov  edx,OFFSET pb_id 
    mov ecx, sizeof pb_id 
    call ReadString
    
    ;printing string
    mov edx, offset nameprompt
    call WriteString
    mov edx,OFFSET pb_name  
    mov ecx, sizeof pb_name
    call ReadString
    

    ;printing string
    mov edx, offset treatementprompt
    call WriteString
    mov  edx,OFFSET pb_treatement  
    mov ecx, sizeof pb_treatement
    call ReadString
    
    ;printing string
    mov edx, offset diseaseprompt
    call WriteString
    mov  edx,OFFSET pb_disease
    mov ecx, sizeof pb_disease
    call ReadString
        
    ;printing string
    mov edx, offset medicineprompt
    call WriteString
    mov  edx,OFFSET pb_medicine  
    mov ecx, sizeof pb_medicine 
    call ReadString

    ;printing string
    mov edx, offset hr
    call WriteString;
    
    ;printing string
    mov edx, offset dataprompt
    call WriteString

    mov ecx, 5
    mov ebx, 0
    gaith:
        mov esi, DWORD PTR [patientBillArray + ebx*4]
        mov edx, esi
        call WriteString
        call crlf
        add ebx, 1
        loop gaith
    
    ;printing string
    mov edx, offset hr
    call WriteString;
    
    ;printing string
    mov edx, offset billReport
    call WriteString;
        ret
patientBilling ENDP






Doctor PROC
    
    ;################## Doctor Dashboard #################

    ddashboardJump:      ; ##### doctor dashboard jump #####

    ; printing string
    mov edx, offset dHeader
    call WriteString

       
    ; printing string
    mov edx, offset doctorDashboard
    call WriteString


    
     mov edx,offset choice
     call WriteString 
     call ReadInt ;Reads the integer value from console and moves it to eax.

    ; *** if condition for doctor record ***


      DRconst1 = 1
      DRconst2 = 2
      DRconst3 = 3
      DRconst4 = 4
      DRconst5 = 5

    CMP eax, DRconst1

    je DR
      mov ebx, 2
      JMP END_IF_DR
    DR:
      call AddDoctorRecord
      jmp ddashboardJump
    END_IF_DR:
    
    
    ; *** if condition for doctor list ***

    CMP eax, DRconst2

    je dlist
      mov ebx, 3
      JMP END_IF_DL
    dlist:
      call doctorList1
      jmp ddashboardJump
    END_IF_DL:
    
    ; *** if condition for doctor search ***

    CMP eax, DRconst3

    je DSearch
      mov ebx, 4
      JMP END_IF_DS
    DSearch:
      call doctorSearch
      jmp ddashboardJump
    END_IF_DS:
    

        ret
Doctor ENDP





; *********** nested doctor module functions ************


AddDoctorRecord PROC
    
    
    
    ; *********** loop to print doctor add record array *********
    ;printing string
    mov edx, offset didprompt
    call WriteString
    mov  edx,OFFSET d_id 
    mov ecx, sizeof d_id 
    call ReadString
    
    ;printing string
    mov edx, offset dnameprompt
    call WriteString
    mov edx,OFFSET d_name  
    mov ecx, sizeof d_name
    call ReadString
    
    ;printing string
    mov edx, offset dageprompt
    call WriteString
    mov  edx,OFFSET d_age  
    mov ecx, sizeof d_age 
    call ReadString

    ;printing string
    mov edx, offset dgenderprompt
    call WriteString
    mov  edx,OFFSET d_gender  
    mov ecx, sizeof d_gender 
    call ReadString
    
    ;printing string
    mov edx, offset dQualificationprompt
    call WriteString
    mov  edx,OFFSET d_qualification
    mov ecx, sizeof d_qualification
    call ReadString
        

    ;printing string
    mov edx, offset dcontactprompt
    call WriteString
    mov  edx,OFFSET d_contact 
    mov ecx, sizeof d_contact
    call ReadString

    ;printing string
    mov edx, offset daddressprompt
    call WriteString
    mov  edx,OFFSET d_address  
    mov ecx, sizeof d_address
    call ReadString


    ;printing string
    mov edx, offset hr
    call WriteString;
    
    ;printing string
    mov edx, offset dataprompt
    call WriteString

    mov ecx, 7
    mov ebx, 0
    gaith:
        mov esi, DWORD PTR [doctorArray1 + ebx*4]
        mov edx, esi
        call WriteString
        call crlf
        add ebx, 1
        loop gaith
    
    ;printing string
    mov edx, offset hr
    call WriteString;
    
    ;printing string
    mov edx, offset successprompt
    call WriteString;

        ret
AddDoctorRecord ENDP



doctorlist1 PROC

    ;printing string
    mov edx, offset listofdoctorssprompt
    call WriteString

        mov ecx, 7
        mov ebx, 0
    pdataloop1:
        mov esi, DWORD PTR [doctorArray1 + ebx*4]
        mov edx, esi
        call WriteString
        call crlf
        add ebx, 1
        loop pdataloop1

    ;printing string
    mov edx, offset hr
    call WriteString;
    
        mov ecx, 7
        mov ebx, 0
    pdataloop2:
        mov esi, DWORD PTR [doctorArray2 + ebx*4]
        mov edx, esi
        call WriteString
        call crlf
        add ebx, 1
        loop pdataloop2

    ;printing string
    mov edx, offset hr
    call WriteString;
        
        mov ecx, 7
        mov ebx, 0
    pdataloop3:
        mov esi, DWORD PTR [doctorArray3 + ebx*4]
        mov edx, esi
        call WriteString
        call crlf
        add ebx, 1
        loop pdataloop3

    ;printing string
    mov edx, offset hr
    call WriteString;
    
        
        mov ecx, 7
        mov ebx, 0
    pdataloop4:
        mov esi, DWORD PTR [doctorArray4 + ebx*4]
        mov edx, esi
        call WriteString
        call crlf
        add ebx, 1
        loop pdataloop4

    ;printing string
    mov edx, offset hr
    call WriteString;
    
        
        mov ecx, 7
        mov ebx, 0
    pdataloop5:
        mov esi, DWORD PTR [doctorArray5 + ebx*4]
        mov edx, esi
        call WriteString
        call crlf
        add ebx, 1
        loop pdataloop5

    ;printing string
    mov edx, offset hr
    call WriteString;


        ret
doctorlist1 ENDP





doctorSearch PROC

     mov edx,offset choice
     call WriteString 
     call ReadInt ;Reads the integer value from console and moves it to eax.

      psconst1 = 1
      psconst2 = 2
      psconst3 = 3
      psconst4 = 4
      psconst5 = 5

      CMP eax, psconst1
      je PatientSearch1
        mov ebx, 2
        JMP END_IF01
      PatientSearch1:
        ;printing string
        mov edx, offset hr
        call WriteString;

        mov ecx, 7
        mov ebx, 0
        l1:
            mov esi, DWORD PTR [doctorArray1 + ebx*4]
            mov edx, esi
            call WriteString
            call crlf
            add ebx, 1
            loop l1
    
        ;printing string
        mov edx, offset hr
        call WriteString;
      END_IF01: 

    
        
        CMP eax, psconst2
      je PatientSearch2
        mov ebx, 3
        JMP END_IF02
      PatientSearch2:
        ;printing string
        mov edx, offset hr
        call WriteString;

        mov ecx, 7
        mov ebx, 0
        l2:
            mov esi, DWORD PTR [doctorArray2 + ebx*4]
            mov edx, esi
            call WriteString
            call crlf
            add ebx, 1
            loop l2
    
        ;printing string
        mov edx, offset hr
        call WriteString;
      END_IF02: 
      
      CMP eax, psconst3
      je PatientSearch3
        mov ebx, 4
        JMP END_IF03
      PatientSearch3:
        ;printing string
        mov edx, offset hr
        call WriteString;

        mov ecx, 7
        mov ebx, 0
        l3:
            mov esi, DWORD PTR [doctorArray3 + ebx*4]
            mov edx, esi
            call WriteString
            call crlf
            add ebx, 1
            loop l3
    
        ;printing string
        mov edx, offset hr
        call WriteString;
      END_IF03: 
      
      CMP eax, psconst4
      je PatientSearch4
        mov ebx, 5
        JMP END_IF04
      PatientSearch4:
        ;printing string
        mov edx, offset hr
        call WriteString;

        mov ecx, 7
        mov ebx, 0
        l4:
            mov esi, DWORD PTR [doctorArray4 + ebx*4]
            mov edx, esi
            call WriteString
            call crlf
            add ebx, 1
            loop l4
    
        ;printing string
        mov edx, offset hr
        call WriteString;
      END_IF04: 
      
      CMP eax, psconst5
      je PatientSearch5
        mov ebx, 6
        JMP END_IF05
      PatientSearch5:
        ;printing string
        mov edx, offset hr
        call WriteString;

        mov ecx, 7
        mov ebx, 0
        l5:
            mov esi, DWORD PTR [doctorArray5 + ebx*4]
            mov edx, esi
            call WriteString
            call crlf
            add ebx, 1
            loop l5
    
        ;printing string
        mov edx, offset hr
        call WriteString;
      END_IF05: 

    
        ;printing string
        mov edx, offset successprompt
        call WriteString


        ret
doctorSearch ENDP





    ;################## Hospital Info #################

HospitalInfo PROC
    
    ;printing string
    mov edx, offset HospitalInformation
    call WriteString

    ret
HospitalInfo Endp


END main




