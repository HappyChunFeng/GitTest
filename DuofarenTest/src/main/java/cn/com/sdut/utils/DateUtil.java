package cn.com.sdut.utils;

import org.apache.commons.lang.time.DateFormatUtils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author 杜
 * @create 2021-12-17-10:02
 */
public class DateUtil {
    public static Date formatStrToDate(String str, String formatter) {
        SimpleDateFormat sdf = new SimpleDateFormat(formatter);
        try {
            return sdf.parse(str);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static String dateFormat(Date date, String pattern) {
        return DateFormatUtils.format(date, pattern);
    }
}
