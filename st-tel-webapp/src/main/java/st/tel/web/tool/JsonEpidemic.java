package st.tel.web.tool;

import com.google.gson.Gson;
import org.springframework.stereotype.Component;
import st.tel.web.pojo.DataObject;
import st.tel.web.pojo.DescPojo;
import st.tel.web.pojo.News;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static st.tel.web.tool.CommonEpidmic.SIMPLE_DATE_FORMAT;

/**
 * @author shaotian
 * @create 2020-04-26 13:07
 */
@Component
public class JsonEpidemic {

    public static void main(String[] args) throws ParseException {
//        String httpUrl = "http://api.tianapi.com/txapi/ncov/index";
//        String jsonResult = request(httpUrl, "key=18db8388219aefde5622fcfbc2d3a11d");
        String s = "{\"code\":200,\"msg\":\"success\",\"newslist\":[{\"news\":[{\"id\":35441,\"pubDate\":1587969194000,\"pubDateStr\":\"29分钟前\",\"title\":\"疫情缓解，纽约州或于5月15日后启动复工\",\"summary\":\"26日，美国纽约州疫情继续缓解。纽约州州长科莫当天表示，过去一天，纽约州新冠肺炎新增死亡病例数、住院人数、以及使用呼吸机的患者数都出现下降。如疫情持续缓解，纽约州或于5月15日后启动复工。\",\"infoSource\":\"央视新闻app\",\"sourceUrl\":\"http:\\/\\/app.cctv.com\\/special\\/cportal\\/detail\\/arti\\/index.html?id=ArtikhvqUDJ5npWbmiFFoITV200427&isfromapp=1\",\"provinceId\":\"\"},{\"id\":35426,\"pubDate\":1587966447000,\"pubDateStr\":\"1小时前\",\"title\":\"又一批中国政府和企业援助巴基斯坦抗疫物资抵达伊斯兰堡\",\"summary\":\"当地时间4月26日8时，一架由北京出发并满载着大批医疗物资的飞机平稳降落在伊斯兰堡国际机场，又一批中国政府和企业援巴抗疫医疗物资抵达伊斯兰堡。这批先行抵达的医疗物资约70立方米，其中包括40余万个医用口罩、8000余套防护服，数千个防护面罩、医用帽子、鞋套等。\",\"infoSource\":\"央视新闻app\",\"sourceUrl\":\"http:\\/\\/app.cctv.com\\/special\\/cportal\\/detail\\/arti\\/index.html?id=Arti4jR3ZSf1GhCtph62ksVr200427&isfromapp=1\",\"provinceId\":\"\"},{\"id\":35415,\"pubDate\":1587962432000,\"pubDateStr\":\"2小时前\",\"title\":\"广东187万学生今天返校复课\",\"summary\":\"按照广东省的统一安排，初三、高三学生于4月27日开学，总共有187万学生回校复课。在广州，就有500多所学校今天（27日）复课，迎来20万师生，所有返校师生都经过核酸检测，检测为阴性才能返校。\",\"infoSource\":\"央视新闻app\",\"sourceUrl\":\"http:\\/\\/app.cctv.com\\/special\\/cportal\\/detail\\/arti\\/index.html?id=ArtifNj2oBAefWDyOvVq47T8200427&isfromapp=1\",\"provinceId\":\"\"},{\"id\":35407,\"pubDate\":1587958979000,\"pubDateStr\":\"3小时前\",\"title\":\"一季度全国社会物流总额56.0万亿元 同比下降7.5%\",\"summary\":\"中国物流与采购联合会今天（27日）公布一季度物流运行数据。受新冠肺炎疫情影响，一季度社会物流总需求出现负增长。一季度，全国社会物流总额为56.0万亿元，同比下降7.5%，与1-2月相比，降幅收窄4.3个百分点。 \",\"infoSource\":\"央视新闻app\",\"sourceUrl\":\"http:\\/\\/app.cctv.com\\/special\\/cportal\\/detail\\/arti\\/index.html?id=ArtiL3Kf65mSxf2yQjQ7WJpZ200427&isfromapp=1\",\"provinceId\":\"\"},{\"id\":35399,\"pubDate\":1587957529000,\"pubDateStr\":\"3小时前\",\"title\":\"日本暴发新冠肺炎集体感染 大津市政厅关闭\",\"summary\":\"由于发生新冠肺炎集体感染，日本大津市政厅到“黄金周”长假结束的5月6日为止的12天内，全面关闭。\\n11名职员被确认集体感染新冠肺炎，约有1200名职员居家观察。\",\"infoSource\":\"央视新闻app\",\"sourceUrl\":\"http:\\/\\/app.cctv.com\\/special\\/cportal\\/detail\\/arti\\/index.html?id=ArtiW8BVxHDAL1CIpJg9VyP7200427&isfromapp=1\",\"provinceId\":\"\"}],\"desc\":{\"id\":1,\"createTime\":1579537899000,\"modifyTime\":1587972376000,\"summary\":\"\",\"deleted\":false,\"countRemark\":\"\",\"currentConfirmedCount\":1118,\"confirmedCount\":84341,\"suspectedCount\":1636,\"curedCount\":78580,\"deadCount\":4643,\"seriousCount\":974,\"suspectedIncr\":2,\"currentConfirmedIncr\":-128,\"confirmedIncr\":3,\"curedIncr\":130,\"deadIncr\":1,\"seriousIncr\":-26,\"remark1\":\"易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病\",\"remark2\":\"潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内可能存在传染性，其中无症状病例传染性非常罕见\",\"remark3\":\"宿主：野生动物，可能为中华菊头蝠\",\"remark4\":\"\",\"remark5\":\"\",\"note1\":\"病毒：SARS-CoV-2，其导致疾病命名 COVID-19\",\"note2\":\"传染源：新冠肺炎的患者。无症状感染者也可能成为传染源。\",\"note3\":\"传播途径：经呼吸道飞沫、接触传播是主要的传播途径。气溶胶传播和消化道等传播途径尚待明确。\",\"generalRemark\":\"1. 3 月 12 日国家卫健委确诊补订遗漏 12 例确诊病例（非 12 日新增），暂无具体省份信息。 2. 浙江省 12 例外省治愈暂无具体省份信息。\",\"abroadRemark\":\"\",\"foreignStatistics\":{\"currentConfirmedCount\":1878933,\"confirmedCount\":2829684,\"suspectedCount\":4,\"curedCount\":749135,\"deadCount\":201616,\"suspectedIncr\":0,\"currentConfirmedIncr\":1627,\"confirmedIncr\":9300,\"curedIncr\":7309,\"deadIncr\":364},\"globalStatistics\":{\"currentConfirmedCount\":1880051,\"confirmedCount\":2914025,\"curedCount\":827715,\"deadCount\":206259,\"currentConfirmedIncr\":1499,\"confirmedIncr\":9303,\"curedIncr\":7439,\"deadIncr\":365}}}]}";
        DataObject dataObject = new Gson().fromJson(s, DataObject.class);
        List<News> newslist = dataObject.getNewslist().get(0).getNews();
        DescPojo desc = dataObject.getNewslist().get(0).getDesc();
        System.out.println(desc.getCreateTime());
        String format = SIMPLE_DATE_FORMAT.format(new Date(Long.parseLong(desc.getCreateTime())));
        System.out.println(format);

    }

    /**
     * @param httpUrl :请求接口
     * @param httpArg :参数
     * @return 返回结果
     */
    public String request(String httpUrl, String httpArg) {
        BufferedReader reader = null;
        String result = null;
        StringBuffer sbf = new StringBuffer();
        httpUrl = httpUrl + "?" + httpArg;

        try {
            URL url = new URL(httpUrl);
            HttpURLConnection connection = (HttpURLConnection) url
                    .openConnection();
            connection.setRequestMethod("GET");
            InputStream is = connection.getInputStream();
            reader = new BufferedReader(new InputStreamReader(is, "UTF-8"));
            String strRead = null;
            while ((strRead = reader.readLine()) != null) {
                sbf.append(strRead);
                sbf.append("\r\n");
            }
            reader.close();
            result = sbf.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

}
