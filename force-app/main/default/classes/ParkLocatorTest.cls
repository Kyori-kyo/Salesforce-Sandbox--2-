@isTest
private with sharing class ParkLocatorTest {
    static void testCallout () {
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        String country = 'United States';
        List<String> expectedParks = new List<String> 
        {'Yosemite', 'Sequoia', 'Crater Lake'};
        System.assertEquals(ParkLocator.country(country));

    }
}
