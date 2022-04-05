@isTest
private class ParkLocatorTest {
    @isTest
    static void testCallout () {
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        String country = 'United States';
        List<String> expectedParks = new List<String>
        {'Yosemite', 'Sequoia', 'Crater Lake'};
        
        System.assertEquals(expectedParks, ParkLocator.country(country));

    }
}