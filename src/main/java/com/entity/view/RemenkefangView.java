package com.entity.view;

import com.entity.RemenkefangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 热门客房
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-08 16:27:05
 */
@TableName("remenkefang")
public class RemenkefangView  extends RemenkefangEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public RemenkefangView(){
	}
 
 	public RemenkefangView(RemenkefangEntity remenkefangEntity){
 	try {
			BeanUtils.copyProperties(this, remenkefangEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
