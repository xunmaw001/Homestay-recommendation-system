package com.entity.view;

import com.entity.MinsuyuangongEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 民宿员工
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-08 16:27:04
 */
@TableName("minsuyuangong")
public class MinsuyuangongView  extends MinsuyuangongEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public MinsuyuangongView(){
	}
 
 	public MinsuyuangongView(MinsuyuangongEntity minsuyuangongEntity){
 	try {
			BeanUtils.copyProperties(this, minsuyuangongEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
