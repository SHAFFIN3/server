<?php
include "../connect.php";
include "../headers.php";

$response = array();

if (isset($_POST['sender_id'], $_POST['receiver_id'], $_POST['message_type'], $_POST['message_content'])) {
    $sender_id = $_POST['sender_id'];
    $receiver_id = $_POST['receiver_id'];
    $message_type = $_POST['message_type'];
    $message_content = $_POST['message_content'];

    $sql = "INSERT INTO messages (sender_id, receiver_id, message_type, message_content) VALUES (?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);

    if ($stmt) {
        $stmt->bind_param("iiss", $sender_id, $receiver_id, $message_type, $message_content);
        $stmt->execute();

        $response['status'] = "success";
        $response['message'] = "Message sent successfully";
        $stmt->close();
    } else {
        $response['status'] = "failure";
        $response['message'] = "Statement preparation failed";
    }

    $conn->close();
} else {
    $response['status'] = "failure";
    $response['message'] = "Missing required fields";
}

echo json_encode($response);
?>
