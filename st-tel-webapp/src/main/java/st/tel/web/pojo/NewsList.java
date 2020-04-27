package st.tel.web.pojo;

import javassist.runtime.Desc;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

/**
 * @Auther: shaotian
 * @Date: 2020/4/27 15:30
 */
@Data
public class NewsList {

    private List<News> news = new ArrayList<>();

    private DescPojo desc;

}
