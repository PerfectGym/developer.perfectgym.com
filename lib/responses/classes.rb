require_relative 'instructors'


module GitHub
  module Resources
    module Responses

      CLASSTYPE_RESPONSE ||= {        
        
        "elements" => [
          {
            "id" => 1,
            "timestamp" => 263952,
            "name" => "Box",
            "description" => "Box perfectly combines cardio and strength training under the guise of groove!",
            "rating" => {
              "rating": 4.1,
              "votesCount": 1234,
              "rankingSort": 2.3                        
            }            
          },
          {
            "id": 2,
            "timestamp": 382653,
            "name": "POWER JOGA",
            "description": "Power Yoga is definitely an intense workout that will make you sweat.",
            "rating" => {
              "rating": 4.1,
              "votesCount": 4321,
              "rankingSort": 4.3
            }            
          }
        ]
      }      

      CLASSES_RESPONSE ||= {  

        "elements" => [
          {
            "classType" => {
              "id" => 4,
              "timestamp" => 263952,
              "name" => "Box",
              "description" => "Box perfectly combines cardio and strength training under the guise of groove!",
              "rating" => {
                "rating": 4.3,
                "votesCount": 1234,
                "rankingSort": 2.3
              }              
            },
            "instructor" => INSTRUCTOR_AGATHA_STRICKLAND,
            "club" => {
              "id": 2,
              "timestamp": 271990,
              "name": "Fibo Cyberbotics",
              "shortName": "Cyberbotics",
              "symbol": "FCBR"      
            },
            "id": 1677,
            "timestamp": 254718,
            "isDeleted": false,
            "startDate": "2015-12-03T06:15:00",
            "endDate": "2015-12-03T07:15:00",
            "attendeesCount": 7,
            "attendeesLimit": 20,
            "clubZone": "Fitness"                
          }
        ]              
      }

      CLASSES_FIRST_PAGE_RESPONSE ||= {  

        "elements" => [          
          {
            "Elements omitted for clarity": "..." 
          },
          {            
            "id": 1677,
            "timestamp": 254718,
            "isDeleted": false,
            "startDate": "2015-12-03T06:15:00",
            "endDate": "2015-12-03T07:15:00",
            "attendeesCount": 7,
            "attendeesLimit": 20,
            "clubZone": "Fitness"                
          }
        ]              
      }

      CLASSES_SECOND_PAGE_RESPONSE ||= {  

        "elements" => [          
          {            
            "id": 2345,
            "timestamp": 366718,
            "isDeleted": false,
            "startDate": "2015-12-28T08:00:00",
            "endDate": "2015-12-28T09:00:00",
            "attendeesCount": 0,
            "attendeesLimit": 20,
            "clubZone": "Fitness"                
          }
        ]              
      }

      USERCLASSES_RESPONSE ||= {      
        
        "elements" => [
          {
            "booked": true,
            "attended": true,
            "userClassRating": 5,
            "userInstructorRating": 4,  
            "classType" => {

                "id" => 4,
                "timestamp" => 263952,
                "name" => "Box",
                "description" => "Box perfectly combines cardio and strength training under the guise of groove!",
                "rating" => {
                  "rating": 4.3,
                  "votesCount": 1234,
                  "rankingSort": 2.3                  
                }                
              },
            "instructor" => INSTRUCTOR_AGATHA_STRICKLAND,
            "club" => {
              "id": 2,
              "timestamp": 271990,
              "name": "Fibo Cyberbotics",
              "shortName": "Cyberbotics",
              "symbol": "FCBR"           
            },
            "id": 1677,
            "timestamp": 254718,
            "isDeleted": false,
            "startDate": "2015-12-03T06:15:00",
            "endDate": "2015-12-03T07:15:00",
            "attendeesCount": 7,
            "attendeesLimit": 20,
            "clubZone": "Fitness"
          }
        ]                        
      }

      BOOKCLASS_RESPONSE ||= {      
                         
        "details": {
          "standbyList": false,
          "classAlreadyBooked": false,
          "bookingRejected": false,
          "bookingBlockedForUser": false,
          "bookingInZoneNotAllowed": false,
          "bookingWithDebitNotAllowed": false,
          "bookingWithoutActiveContractNotAllowed": false,
          "bookingNotAllowed": false,
          "bookingToLate": true,
          "bookingToSoon": false,
          "dailyBookingLimitReached": false,
          "dailyZoneBookingLimitReached": false,
          "userNotAllowedToAccessClub": false,
          "standbyListLimitReached": false,
          "rejectionReason": ""
        },
        "success": false,
      }

      CANCELCLASS_RESPONSE ||= {      
                         
        "details": {
          "classNotBooked": true,
          "toLateToCancel": false
        },
        "success": false,
      }

      RATECLASS_RESPONSE ||= {      
                         
        "details": {
          "classAlreadyRated": true,
          "userDidNotAttendClass": false
        },
        "success": false,
      }

      RATEINSTRUCTOR_RESPONSE ||= {      
                         
        "details": {
          "instructorAlreadyRated": true,
          "classWithoutAssignedInstructor": false,
          "userDidNotAttendClass": false
        },
        "success": false,
      }
    end
  end
end
