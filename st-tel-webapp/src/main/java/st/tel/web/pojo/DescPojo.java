package st.tel.web.pojo;

import lombok.Data;

/**
 * @Auther shaotian
 * @Date 2020/4/27 15 10
 */
@Data
public class DescPojo {

    private String id;
    private String createTime;
    private String modifyTime;
    private String summary;
    private String deleted;
    private String countRemark;
    private String currentConfirmedCount;
    private String confirmedCount;
    private String suspectedCount;
    private String curedCount;
    private String deadCount;
    private String seriousCount;
    private String suspectedIncr;
    private String currentConfirmedIncr;
    private String confirmedIncr;
    private String curedIncr;
    private String deadIncr;
    private String seriousIncr;
    private String remark1;
    private String remark2;
    private String remark3;
    private String remark4;
    private String remark5;
    private String note1;
    private String note2;
    private String note3;
    private String generalRemark;
    private String abroadRemark;
    private ForeignPojo foreignStatistics;
    private ForeignPojo globalStatistics;

}
