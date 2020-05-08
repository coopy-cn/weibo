package st.tel.web.pojo;

import lombok.Data;

import java.util.List;

/**
 * @Auther: shaotian
 * @Date: 2020/5/5 10:57
 */
@Data
public class WeiBo {

    private Integer code;

    private String msg;

    private List<WeiBoPojo> newslist;

}
