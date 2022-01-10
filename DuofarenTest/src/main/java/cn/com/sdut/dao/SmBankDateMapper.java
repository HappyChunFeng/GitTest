package cn.com.sdut.dao;

import cn.com.sdut.domain.SmBankDate;

/**
 * @author 杜
 * @create 2021-12-17-9:41
 */
public interface SmBankDateMapper {
    /**
     *
     * @param bankId
     * @return
     */
    SmBankDate selectByPrimaryKey(String bankId);
}
