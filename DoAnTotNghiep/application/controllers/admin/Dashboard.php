<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('backend/Mproduct');
		$this->load->model('backend/Mcategory');
		$this->load->model('backend/Mcontent');
		$this->load->model('backend/Mcustomer');
		$this->load->model('backend/Muser');
		$this->load->model('backend/Morders');
		$this->load->model('backend/Morderdetail');
		if(!$this->session->userdata('sessionadmin'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionadmin');
		$this->data['com']='dashboard';
	}

	public function index()
	{
		$this->data['total1']=$this->Mproduct->product_sanpham_count();
		// $this->data['total1_tong']=$this->Mproduct->product_dem();
		$this->data['total2']=$this->Mcontent->content_count();
		$this->data['total3']=$this->Mcustomer->customer_count();
		$this->data['total4']=$this->Morders->orders_count();
		// $this->data['total4_tong']=$this->Morders->orders_dem();
		// $this->data['total_huy']=$this->Morders->orders_huy();
		//thống kê sản phẩm
		$this->load->library('phantrang');
		$this->load->library('session');
		$limit=100;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mproduct->product_sanpham_count();
		// -----
		// $total_rows = $this->Mproduct->product_dem();
        // $this->data['total_rows'] = $total_rows;
		// ----
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/product');
		$this->data['list']=$this->Mproduct->product_sanpham1($limit,$first);




		//Thống kê - vẽ biểu đồ
		
		$this->data['view']='index';
		$this->data['title']='Hệ thống quản lý cơ sở dữ liệu';
		$this->load->view('backend/layout', $this->data);
	}

	public function thongke_sp()
	{
		print("hello");
		
		$this->data['view']='index';
		$this->data['title']='Hệ thống quản lý cơ sở dữ liệu';
		$this->load->view('backend/layout', $this->data);
	}

}

/* End of file Dashboard.php */
/* Location: ./application/controllers/Dashboard.php */