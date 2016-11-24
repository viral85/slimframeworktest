<?php

require 'Models/Users.php';


class DisplayController {

    protected $db;

    public function __construct($container) {
		
		$this->db = $container->get('db');
		$this->userModel = new \App\Models\Users();
	}

    public function GetUserDetailByOrderId($request, $response, $args){
		
		$userData = $this->userModel->GetUserDetailByOrderId($this->db,$args['orderId']);
        
        if (isset($userData) && !empty($userData)) {
            return $response->withJson($userData);
        } else {
            $data = [];
            $data[] = "Invalid Order Id";
            return $response->withJson($data);
        } 
		
    }

    public function UpdateOrderStatusByOrderId($request, $response, $args){
		$OrderDetail = $this->userModel->UpdateOrderStatusByOrderId($this->db,$args['orderId']);
        
        $data = [];
        if (isset($OrderDetail) && !empty($OrderDetail) && count($OrderDetail) > 0) {
            if ($OrderDetail[0]->urd_status == 2) {
                $data[] = "Order is already Cancel";
                return $response->withJson($data);
            } else {
				$OrderData = $this->userModel->UpdateOrderStatus($this->db,$args['orderId']);
                $data[] = "Order is Cancelled";
                return $response->withJson($data);
            }
        } else {
            $data[] = "Invalid Order Id";
            return $response->withJson($data);
        }
    }
}
?>