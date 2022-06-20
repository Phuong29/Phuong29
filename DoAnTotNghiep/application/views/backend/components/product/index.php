<div class="content-wrapper">
	<section class="content-header">
		<h1><i class="glyphicon glyphicon-cd"></i> Danh sách sản phẩm</h1>
		<div class="breadcrumb">
			
			<?php
			if($user['role']==1){
				echo '<a class="btn btn-primary btn-sm" href="'.base_url().'admin/product/insert" role="button">
				<span class="glyphicon glyphicon-plus"></span> Thêm mới
				</a>';
			}
			?>
			<a class="btn btn-primary btn-sm" href="<?php echo base_url()?>admin/product/recyclebin" role="button">
				<span class="glyphicon glyphicon-trash"></span> Thùng rác(<?php $total=$this->Mproduct->product_trash_count(); echo $total; ?>)
			</a>
		</div>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box" id="view">
					<div class="box-header with-border">

					<section class="content-search">
							<div class="form-inline">
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1">Tìm kiếm</span>
									<input type="text" name="search" onkeypress="FEnter(event);" id="search" class="form-control">
									<span class="input-group-addon"><i onclick="FChange();" class="glyphicon glyphicon-search"></i></span>
								</div>
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1">Hiển thị</span>
									<select name="limit" id="limit" onchange="FChange();" class="form-control">
										<option value="10">10</option>
										<option value="20">20</option>
										<option value="30">30</option>
										<option value="40">40</option>
										<option value="50">50</option>
										<option value="100">100</option>
										<option value="all">Tất cả</option>
									</select>
								</div>
							</div>
						</section>
						<!-- /.box-header -->
						<div class="box-body">
							<?php  if($this->session->flashdata('success')):?>
								<div class="row">
									<div class="alert alert-success">
										<?php echo $this->session->flashdata('success'); ?>
										<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
									</div>
								</div>
							<?php  endif;?>
							<?php  if($this->session->flashdata('error')):?>
								<div class="row">
									<div class="alert alert-error">
										<?php echo $this->session->flashdata('error'); ?>
										<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
									</div>
								</div>
							<?php  endif;?>
							<div class="row" style='padding:0px; margin:0px;'>
								<!--ND-->
								<div class="table-responsive" >
									<table class="table table-hover table-bordered">
										<thead>
											<tr>
												<th class="text-center" style="width:20px">ID</th>
												<th>Hình</th>
												<th>Tên sản phẩm</th>
												<th>Số lượng trong kho</th>
												<th>Loại sản phẩm</th>
												<th class="text-center">Trạng thái</th>
												<th class="text-center">Nhập hàng</th>
												<th class="text-center" colspan="2">Thao tác</th>
											</tr>
										</thead>
										<tbody>
											<?php foreach ($list as $row):?>
												<tr>
													<td class="text-center"><?php echo $row['id'] ?></td>
													<td style="width:70px">
														<img src="public/images/products/<?php echo $row['img'] ?>" alt="<?php echo $row['name'] ?>" class="img-responsive">
													</td>
													<td style="font-size: 16px;"><?php echo $row['name'] ?></td>
													<td class="text-center"> <?php echo $row['number'] - $row['number_buy'] ?></td>
													<?php 
													$namecat = $this->Mcategory->category_name($row['catid']);
													?>
													<td><?php echo $namecat ?></td>
													<td class="text-center">
														<a href="<?php echo base_url() ?>admin/product/status/<?php echo $row['id'] ?>">
															<?php if($row['status']==1):?>
																<span class="glyphicon glyphicon-ok-circle mauxanh18"></span>
																<?php else: ?>
																	<span class="glyphicon glyphicon-remove-circle maudo"></span>
																<?php endif; ?>
															</a>
														</td>
														<?php  
														$quyen='';
														if($user['role']==1){
															$quyen.='
															<td class="text-center"><a class="btn btn-info btn-xs" href="admin/product/import/'.$row['id'].'" role = "button">
															<span class="glyphicon glyphicon-trash"></span>Nhập hàng
															</a>
															</td>
															';

														}else{
															$quyen.='
															<td class="text-center">
															<p class="fa fa-lock" style="color:red"> Không đủ quyền</p>
															</td>';
														}
														echo $quyen;
														?>
														<td class="text-center">
												<a class="btn btn-success btn-xs" href="<?php echo base_url() ?>admin/product/update/<?php echo $row['id']?>" role = "button">
													<span class="glyphicon glyphicon-edit"></span>Sửa
												</a>
											</td>
														
														<td class="text-center">
															<a class="btn btn-danger btn-xs" href="<?php echo base_url() ?>admin/product/trash/<?php echo $row['id'] ?>" onclick="return confirm('Xác nhận xóa sản phẩm này ?')" role = "button">
																<span class="glyphicon glyphicon-trash"></span> Xóa
															</a>
														</td>
													</tr>
												<?php endforeach; ?>
											</tbody>
										</table>
									</div>
									<div class="row">
										<div class="col-md-12 text-center">
											<ul class="pagination">
												<?php echo $strphantrang ?>
											</ul>
										</div>
									</div>
									<!-- /.ND -->
								</div>
							</div><!-- ./box-body -->
						</div><!-- /.box -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</section>
			<!-- /.content -->
		</div><!-- /.content-wrapper -->