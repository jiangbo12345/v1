package com.yc.dao.orm.commons;

import org.springframework.context.annotation.*;

import com.yc.entity.*;
import com.yc.entity.Package;
import com.yc.entity.user.Department;
import com.yc.entity.user.User;
import com.yc.entity.user.Position;

@Configuration
public class GenericDaoConfig {

	@Bean
	public GenericDao<UnKnownCommodity> getUnKnownCommodityDao() {
		return new GenericDaoSupport<UnKnownCommodity>(UnKnownCommodity.class);
	}

	@Bean
	public GenericDao<Commodity> getCommodityDao() {
		return new GenericDaoSupport<Commodity>(Commodity.class);
	}

	@Bean
	public GenericDao<ImagePath> getImagePathDao() {
		return new GenericDaoSupport<ImagePath>(ImagePath.class);
	}

	@Bean
	public GenericDao<OrderForm> getOrderFormDao() {
		return new GenericDaoSupport<OrderForm>(OrderForm.class);
	}

	@Bean
	public GenericDao<StoreRoom> getStoreRoomDao() {
		return new GenericDaoSupport<StoreRoom>(StoreRoom.class);
	}

	@Bean
	public GenericDao<Package> getPackageDao() {
		return new GenericDaoSupport<Package>(Package.class);
	}

	@Bean
	public GenericDao<CargoGroup> getCargoGroupDao() {
		return new GenericDaoSupport<CargoGroup>(CargoGroup.class);
	}

	@Bean
	public GenericDao<User> getPersonnelDao() {
		return new GenericDaoSupport<User>(User.class);
	}
	
	@Bean
	public GenericDao<OrderGroup> getOrderGroupDao() {
		return new GenericDaoSupport<OrderGroup>(OrderGroup.class);
	}
	@Bean
	public GenericDao<Position> getPositionDao() {
		return new GenericDaoSupport<Position>(Position.class);
	}
	@Bean
	public GenericDao<Department> getDepartmentDao() {
		return new GenericDaoSupport<Department>(Department.class);
	}
	@Bean
	public GenericDao<Address> getAddressDao() {
		return new GenericDaoSupport<Address>(Address.class);
	}
	
}
