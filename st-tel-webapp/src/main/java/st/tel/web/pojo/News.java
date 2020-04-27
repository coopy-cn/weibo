package st.tel.web.pojo;

import lombok.Data;

/**
 * @Auther shaotian
 * @Date 2020/4/27 15 27
 */
@Data
public class News {
    private String id;

    private String pubDate;

    private String pubDateStr;

    private String title;

    private String summary;

    private String infoSource;

    private String sourceUrl;

    private String provinceId;

}
