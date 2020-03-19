<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
      <div class="pull-left image">
        <img src="<?php echo (!empty($seller['photo'])) ? '../images/'.$seller['photo'] : '../images/profile.jpg'; ?>" class="img-circle" alt="User Image">
      </div>
      <div class="pull-left info">
        <p><?php echo $seller['firstname'].' '.$seller['lastname']; ?></p>
       
      </div></br>
      <div class="pull-left info">
        <p><?php echo $seller['shopname']; ?></p>
       
      </div>
    </div>
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu" data-widget="tree">
      <li class="header">REPORTS</li>
      <li><a href="sales.php"><i class="fa fa-money"></i> <span>Sales</span></a></li>
    
      <li class="treeview">
        <a href="#">
          <i class="fa fa-barcode"></i>
          <span>Product</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li><a href="products.php"><i class="fa fa-circle-o"></i> Product List</a></li>
        </ul>
      </li>
    </ul>
  </section>
  <!-- /.sidebar -->
</aside>