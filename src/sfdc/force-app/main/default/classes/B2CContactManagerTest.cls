/**
 * @author Eric Schultz
 * @date August 11th, 2020
 *
 * @description 
 */
@IsTest
public with sharing class B2CContactManagerTest {

    /**
     * @see B2CContactManager.getContact
     * @description 
     */
    @IsTest
    static void getContact() {

        Contact c = new Contact(
            LastName = 'lastname'
        );

        Database.insert( c );


        Test.startTest();

            B2CContactManager.getContactById(
                c.Id,
                true,
                B2C_Integration_Field_Mappings__mdt.getAll().values()
            );

        Test.stopTest();
    }

    /**
     * @see B2CContactManager.getPublishProfile
     * @description 
     */
    @IsTest
    static void getPublishProfile() {
        
        Contact c = new Contact(
            LastName = 'lastname'
        );

        Database.insert( c );
    
        Test.startTest();

            B2CContactManager.getPublishProfile(
                c,
                B2C_Integration_Field_Mappings__mdt.getAll().values()
            );

        Test.stopTest();
    
    }

}