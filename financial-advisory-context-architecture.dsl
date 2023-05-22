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
            platform    = softwareSystem "Financial Advisory Platform"{
            }
            //RELATIONSHIPS SECTION


            //ROLE TO PLATFORM RELATIONSHIPS
            user     ->  platform  "Uses"
            consultant  ->  platform  "Uses"
            visitor     ->  platform  "Visits"
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
                    autoLayout
                }
                theme default
    }

}