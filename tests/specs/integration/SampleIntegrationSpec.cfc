component extends="tests.resources.ModuleIntegrationSpec" appMapping="/app" {
    function run() {
        describe( "Sample Integration Specs", function() {
            it( "can run integration specs with the module activated", function() {
                expect( getController().getModuleService().isModuleRegistered( "GutenBox" ) ).toBeTrue();
                var event = execute( event = "Main.index", renderResults = true );
                expect( event.getPrivateCollection().welcomeMessage )
                    .toBe( "Welcome to ColdBox!" );
            } );
        } );
    }
}