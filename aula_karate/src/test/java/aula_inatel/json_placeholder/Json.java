package aula_inatel.json_placeholder;
import com.intuit.karate.junit5.Karate;

class Json {
    
    @Karate.Test
    Karate json_placeholder() {
        return Karate.run("JsonRunner").relativeTo(getClass());
    }    

}