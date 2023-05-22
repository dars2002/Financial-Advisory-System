/* Financial Advisory
Software Platform */

!constant ORGANIZATION_NAME "Financial "
!constant BUSINESS_UNIT "Advisory"

workspace {
    model {
        group "${ORGANIZATION_NAME} - ${BUSINESS_UNIT}" {
            //Actor/Roles
            user     =   person "User"
            consultant  =   person "Consultant"
            visitor     = person "Visitor"

            //Software Platform
            platform    = softwareSystem "Financial Advisory Platform"{/*
                //Containers
                studentApp      = container  "Student App"  "Access to student features"
                instructorApp   = container "Instructor App"
                landingPage     = container "Landing Page"
                webApp          = container "Platform Website"
                webAPI          = container "Platform API"*/
            }
            //RELATIONSHIPS SECTION


            //ROLE TO PLATFORM RELATIONSHIPS
            user     ->  platform  "Uses"
            consultant  ->  platform  "Uses"
            visitor     ->  platform  "Visits"

            //CONTAINER-TO-CONTAINER RELATIONSHIPS
            /*landingPage     ->  webApp
            webApp          ->  webAPI
            studentApp      ->  webAPI
            instructorApp   ->  webAPI*/

            //ROLE-TO-CONTAINER RELATIONSHIPS
            /*user        ->  studentApp    "Uses"
            user        ->  webApp        "Uses"
            consultant  ->  instructorApp "Uses"
            consultant  ->  webApp        "Uses"
            visitor     ->  landingPage   "Visits"*/

        }
        
    }

    //VIEWS SPECIFICATION SECTION

    views {
                //System Context
                systemContext platform  {
                    include * 
                    autoLayout
                }
                //Container Diagram
                container platform  {
                    //Roles includes
                    include visitor user consultant
                    //Containers included
                    /*include studentApp instructorApp landingPage webApp webAPI*/
                    autoLayout
                }
                theme default
    }

}