
(deftemplate Person(slot Height(type INTEGER)))
(deftemplate Person1(slot Weight(type INTEGER)))
(deftemplate Person2(slot BMI(type INTEGER)))
(deftemplate State(slot Statetype))

;rules to define to which category the person belongs (if bmi is within range of rules)
(defrule obese

         (Person2( BMI 30 | 32 |31| 33|34|35|36|37|38|39|40 ))
         
=>
        (assert (State(Statetype Obese)))
	(printout t "The Person is Obese" crlf)
        (printout t "              " crlf)
        (printout t "Excercises recommended:" crlf)
        (printout t "              " crlf)
        (printout t "30 minutes cardio - 5 times a week" crlf)
        (printout t " 15 plank reps - 5 times a week" crlf)
        (printout t " Walking about 500 steps a day" crlf)
        (printout t " 150 Water Aerobics excercises per day" crlf))         
             

;if bmi is within range of rules
(defrule normal
	
                 (Person2( BMI 20 | 21 |22| 23|24|25|26|27|28|29 ))
=>
     
        (assert (State(Statetype Healthy))
	(printout t "The Person is Healthy" crlf))
        (printout t "              " crlf)
        (printout t "Excercises recommended:" crlf)
        (printout t "              " crlf)
        (printout t "15 minutes cardio - 3 times a week" crlf)
        (printout t " 15 plank reps - 3 times a week" crlf)
        (printout t " Walking about 1000 steps a day" crlf)
        (printout t " strength training " crlf)

 
)  


(defrule underweight
(Person2( BMI 10 | 12 |11| 13|14|15|16|17|18|19|9  ))
=>
	(printout t "Guy is underweight" crlf)
        (printout t "              " crlf)
        (printout t "Foods recommended:" crlf)
        (printout t "Avocado" crlf)
        (printout t "Ugali" crlf)
        (printout t "Milk" crlf)
        (printout t "Protein Shakes" crlf)
        (printout t "Red meat" crlf)
        (printout t "Whole-grain breads" crlf))   

;constructs dealing with the dialog with the user
(defrule welcome
=>
(printout t "          " crlf crlf)	
(printout t "You are Welcome. " crlf crlf))

(defrule BMI
=>

	(printout t "Please enter the BMI(whole number not decimal" crlf)
	(bind ?the_BMI (read))
	(assert (Person2 (BMI ?the_BMI)))

               
              )








;End CLIPS