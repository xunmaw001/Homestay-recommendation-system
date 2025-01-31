package com.entity.view;

import com.entity.FangjianyudingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 房间预定
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-08 16:27:05
 */
@TableName("fangjianyuding")
public class FangjianyudingView  extends FangjianyudingEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public FangjianyudingView(){
	}
 
 	public FangjianyudingView(FangjianyudingEntity fangjianyudingEntity){
 	try {
			BeanUtils.copyProperties(this, fangjianyudingEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
