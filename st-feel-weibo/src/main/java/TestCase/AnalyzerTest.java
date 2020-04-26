package TestCase;

import DataAnalyzer.dataAnalyzer;
import org.testng.annotations.Test;

public class AnalyzerTest {

	//case5 分析数据
	@Test
	public void testAnalyzer(){
		dataAnalyzer ss = new dataAnalyzer();
		ss.mainAnalyzer();
	}

}
