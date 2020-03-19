<!DOCTYPE html>
<html>
<head>
  <title></title>
</head>
<body>


<?php include 'includes/header.php'; ?>
<?php include 'includes/session.php'; ?>
    
          
                
                <?php
                if(isset($_SESSION['user'])){?>

      <div class="login-box-body">
      <h2 class="login-box-msg">Payment</h2>

      <form action="#" method="POST">
          <div class="form-group has-feedback">
            <input type="text" class="form-control" name="cardno" placeholder="Card Number" required>
            
          </div>
          <div class="form-group has-feedback">
            <input type="text" class="form-control" name="ccv" placeholder="CCV" required>
          </div>
          <div class="form-group has-feedback">
            <input type="text" class="form-control" name="exp" placeholder="Expire Date" required>
          </div>
          <?php
                  echo "
                     <a href='sales.php?pay=".$_SESSION['user']."'>Check Out</a>
                  ";
                }
                else{
                  echo "
                    <h4>You need to <a href='login.php'>Login</a> to checkout.</h4>
                  ";
                }
              ?>
      </form>
      
</div>
  
<?php include 'includes/scripts.php' ?>
</body>
</html>

</body>
</html>