<?php
//加密方式：php源码混淆类加密。免费版地址:http://www.zhaoyuanma.com/phpjm.html 免费版不能解密,可以使用VIP版本。
//此程序由【找源码】http://Www.ZhaoYuanMa.Com (免费版）在线逆向还原，QQ：7530782 
?>
<?php
$context = json_decode($_POST['context'] ?: "[]") ?: [];
$postData = [
    "model" => "gpt-3.5-turbo",
    "temperature" => 0,
    "stream" => true,
    "messages" => [],
];
if (!empty($context)) {
    $context = array_slice($context, -5);
    foreach ($context as $message) {
        $postData['messages'][] = ['role' => 'user', 'content' => str_replace("\n", "\\n", $message[0])];
        $postData['messages'][] = ['role' => 'assistant', 'content' => str_replace("\n", "\\n", $message[1])];
    }
}
$postData['messages'][] = ['role' => 'user', 'content' => $_POST['message']];
$postData = json_encode($postData);
session_start();
$_SESSION['data'] = $postData;


$encrypted_string = $_POST['key'];
$decrypted_string = base64_decode($encrypted_string);
$_POST['key'] = $decrypted_string;


if ((isset($_POST['key'])) && (!empty($_POST['key']))) {
    $_SESSION['key'] = $_POST['key'];
}
echo '{"success":true}';
?>