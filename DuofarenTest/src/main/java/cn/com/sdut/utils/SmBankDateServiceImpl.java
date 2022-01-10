package cn.com.sdut.utils;

import cn.com.sdut.dao.SmBankDateMapper;
import cn.com.sdut.domain.SmBankDate;
import org.apache.commons.lang.StringUtils;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.Test;


import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author zy
 * @version 1.0
 * @date 2021/7/5
 */
public class SmBankDateServiceImpl{
    private SmBankDateMapper smBankDateMapper;
    private InputStream stream;
    private SqlSession sqlSession;
    @Before
    public void init()throws Exception{
        stream = Resources.getResourceAsStream("SqlMapConfig.xml");
        SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(stream);
        sqlSession = sessionFactory.openSession();
        smBankDateMapper = sqlSession.getMapper(SmBankDateMapper.class);
    }

    public Date getSysdateByBankId(String bankId) {
            try {
                if (StringUtils.isNotBlank(bankId)) {
                    SmBankDate smBankDate = smBankDateMapper.selectByPrimaryKey(bankId);
                    if (null != smBankDate && StringUtils.isNotBlank(smBankDate.getACCTDT())) {
                        return DateUtil.formatStrToDate(
                                smBankDate.getACCTDT() + DateUtil.dateFormat(new Date(), "HHmmss"),
                                "yyyyMMddHHmmss");
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        return new Date();
}

    public long getCurrentTimeMillisByBankId(String bankId) {
        Date sysdateByBankId = this.getSysdateByBankId(bankId);
        return sysdateByBankId.getTime();
    }

    /**
     * 原来的方法
     * @param format
     */
    public static void getNowStrDate(String format)  {
        if(null==format||"".equals(format)){
            format="yyyy-MM-dd HH:mm:ss";
        }
        SimpleDateFormat formatter = new SimpleDateFormat(format);
        System.out.println(formatter.format(new Date()));
    }
    /**
     * 新增的方法
     * @throws Exception
     */
    public void newGetNowStrDate(String format){
        String s = DateUtil.dateFormat(this.getSysdateByBankId("103"), format);
        //String s = DateUtil.dateFormat(new Date(), format);
        System.out.println(s);
    }
    @Test
    public void main(){
        String bankId = "103";
        //String format="yyyy-MM-dd HH:mm:ss";
        String format="yyyyMMdd";
        getNowStrDate(format);
        newGetNowStrDate(format);
    }


}