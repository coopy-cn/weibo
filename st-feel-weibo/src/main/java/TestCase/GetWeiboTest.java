package TestCase;


import Dataobtain.dataMining;
import org.testng.annotations.Test;

public class GetWeiboTest {

		//case1 测试数据获取模块
		@Test
		public void testMining() {
			dataMining testdata = new dataMining();
			testdata.mainDataMining();
			
		}

}
