public class ParkLocator {
    public static List <String> country(String country) {
        ParkService.ParksImplPort prkSvc = new ParkService.ParksImplPort();
        
        return prkSvc.byCountry(country);

    }
}
