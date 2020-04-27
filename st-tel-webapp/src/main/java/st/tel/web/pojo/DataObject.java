package st.tel.web.pojo;

import lombok.Data;

import java.util.List;

/**
 * @Auther: shaotian
 * @Date: 2020/4/27 15:31
 */
@Data
public class DataObject {

    private Integer code;

    private String msg;

    private List<NewsList> newslist;

}
