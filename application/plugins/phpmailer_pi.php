<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

function send_email_smtp($fromEmail,$fromName,$toEmail,$toName,$subject,$msg){
	require_once("phpmailer/class.phpmailer.php");
	$mail             = new PHPMailer();
	$mail->IsSMTP(); // telling the class to use SMTP
	
	$mail->SMTPDebug  = 1;                     // enables SMTP debug information (for testing)
	                                           // 1 = errors and messages
	                                           // 2 = messages only
	$mail->SMTPAuth   = true;                  // enable SMTP authentication
	$mail->SMTPSecure = "tls";                 // sets the prefix to the servier
	$mail->Host       = "smtp.gmail.com";      // sets GMAIL as the SMTP server
	$mail->Port       = "587";                   // set the SMTP port for the GMAIL server
	$mail->Username   = "akungmailanda@gmail.com";  // GMAIL username
	$mail->Password   = "passwordanda";            // GMAIL password
	
	$mail->SetFrom($fromEmail, $fromName);
	$mail->AddReplyTo($fromEmail, $fromName);
	$mail->Subject    = $subject;	
	//$mail->AltBody    = "To view the message, please use an HTML compatible email viewer!"; // optional, comment out and test	
	$mail->MsgHTML($msg);
	$mail->AddAddress($toEmail, $toName);		
	if (!$mail->Send()){
		return false;
	}
	else{
		return true;
	}
}
?>