<?php
// Routes

$app->get('/[{name}]', function ($request, $response, $args) {
    // Sample log message
    $this->logger->info("Slim-Skeleton '/' route");

    // Render index view
    return $this->renderer->render($response, 'index.phtml', $args);
});

//Get user detail based on order id
$app->get('/getorder/orderId/{orderId}', '\DisplayController:GetUserDetailByOrderId');

//Cancel order by
$app->get('/cancelorder/orderId/{orderId}', '\DisplayController:UpdateOrderStatusByOrderId');
