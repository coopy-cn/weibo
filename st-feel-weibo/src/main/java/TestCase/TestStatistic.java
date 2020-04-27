package TestCase;
import Dataobtain.*;
import org.testng.annotations.Test;;import static org.testng.Assert.assertEquals;
import static org.testng.AssertJUnit.assertNotNull;

public class TestStatistic {

	SetManager adSet,unadSet;
	
	public TestStatistic(){
		adSet = new SetManager(Global.ad);
		unadSet = new SetManager(Global.unad);

	}
	@Test
	public void test() {
		adSet.beginAnalyzer();
		assertEquals(30, adSet.sampleNum());
		assertNotNull(adSet.getlexlist());
		unadSet.beginAnalyzer();
		assertEquals(45, unadSet.sampleNum());
		assertNotNull(unadSet.getlexlist());
	}

}
