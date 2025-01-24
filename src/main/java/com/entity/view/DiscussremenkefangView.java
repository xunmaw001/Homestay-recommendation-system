package com.entity.view;

import com.entity.DiscussremenkefangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 热门客房评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-08 16:27:05
 */
@TableName("discussremenkefang")
public class DiscussremenkefangView  extends DiscussremenkefangEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussremenkefangView(){
	}
 
 	public DiscussremenkefangView(DiscussremenkefangEntity discussremenkefangEntity){
 	try {
			BeanUtils.copyProperties(this, discussremenkefangEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
