<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model as Model;
use Illuminate\Database\Capsule\Manager as DB;
use Slim\Container as Slim;

class Users extends Model
{
	protected $table = 'users';
	
	public static function GetUserDetailByOrderId($connection,$orderId)
	{
		
		$userDetail = $connection::select("SELECT user.u_first_name, user.u_last_name, user.u_email, user.u_phone, UserOrder.urd_user_id, UserOrder.urd_totalno_of_order, UserOrder.urd_order_date, UserOrder.urd_status
                                FROM users As user
                                join user_order_detail AS UserOrder ON UserOrder.urd_user_id = user.id
                                where UserOrder.id = ". $orderId);
		
        
        
		return $userDetail;
	}
	
	public static function UpdateOrderStatusByOrderId($connection,$orderId)
	{
		$OrderData = $connection::select("SELECT urd_status FROM user_order_detail where id = ".$orderId);
        return $OrderData;
		
	}
	
	public static function UpdateOrderStatus($connection,$orderId)
	{
		$OrderUpdate = $connection::select("UPDATE user_order_detail SET urd_status = '2' where id = ".$orderId);
        return $OrderUpdate;
		
	}
}
?>