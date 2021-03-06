@extends('admin_layout')
@section('layout')
<section id="main-content">
	<section class="wrapper">
		<div class="container-fluid">
			<div class="market-updates">
				<div class="col-md-3 market-update-gd">
					<div class="market-update-block clr-block-3">
						<div class="col-md-4 market-update-right">
							<i class="fa fa-eye"> </i>
						</div>
						<div class="col-md-8 market-update-left">
							<h4>Services</h4>
							<h3>{{$total['totalservice']}}</h3>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-3 market-update-gd">
					<div class="market-update-block clr-block-3">
						<div class="col-md-4 market-update-right">
							<i class="fa fa-users"></i>
						</div>
						<div class="col-md-8 market-update-left">
							<h4>Users</h4>
							<h3>{{$total['totaluser']}}</h3>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-3 market-update-gd">
					<div class="market-update-block clr-block-3">
						<div class="col-md-4 market-update-right">
							<i class="fa fa-usd"></i>
						</div>
						<div class="col-md-8 market-update-left">
							<h4>Products</h4>
							<h3>{{$total['totalproduct']}}</h3>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-3 market-update-gd">
					<div class="market-update-block clr-block-3">
						<div class="col-md-4 market-update-right">
							<i class="fa fa-shopping-cart" aria-hidden="true"></i>
						</div>
						<div class="col-md-8 market-update-left">
							<h4>Orders</h4>
							<h3>{{$total['totalorder']}}</h3>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="row">
				<style type="text/css">
					table.table.table-bordered.table-light {
						background: #feffff;
					}

					table.table.table-bordered.table-light tr th {
						color: #111111;
					}

					table.table-light tr td {
						color: #111 ;
					}
				</style>
				<p class="title_thongke">Th???ng k??</p>
				<div class="col-md-12">
					<table class="table table-bordered table-light">
						<thead>
							<tr>
								<th scope="col">T???ng S??? Kh??ch H??ng</th>
								<th scope="col">T???ng S??? ????n H??ng</th>
								<th scope="col">T???ng S??? S???n Ph???m</th>
								<th scope="col">T???ng L?????t ????ng K?? D???ch V???</th>
								<th scope="col">T???ng L?????t Ph???n H???i</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>{{$total['totaluser']}}</td>
								<td>{{$total['totalorder']}}</td>
								<td>{{$total['totalproduct']}}</td>
								<td>{{$total['totalservice']}}</td>
								<td>{{$total['totalfeedback']}}</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<style type="text/css">
				p.title_thongke {
					text-align: center;
					font-size: 20px;
					font-weight: bold;
				}
			</style>
			<div class="table-agile-info">
				<div class="panel panel-default">
					<div class="panel-heading">
						????n H??ng M???i
					</div>
					<div class="table-responsive">
						<table class="table table-striped b-t b-light">
							<thead>
								<tr>
									<th scope="col">M?? ????n h??ng</th>
									<th scope="col">Code thanh to??n</th>
									<th scope="col">T??n s???n ph???m</th>
									<th scope="col">S??? l?????ng</th>
									<th scope="col">T??n Kh??ch H??ng</th>
									<th scope="col">Thanh to??n</th>
									<th scope="col">Tr???ng Th??i</th>
								</tr>
							</thead>
							<tbody>
								@foreach($order as $id => $o)
								<tr>
									<td>{{$o->id}}</td>
									<td>{{$o->order_code}}</td>
									<td>{{$o->product_name}}</td>
									<td>{{$o->product_quantity}}</td>
									<td>{{$o->user_fullname}}</td>
									<td>{{$o->order_pay}}</td>
									<td>{{$o->order_status}}</td>
								</tr>
								@endforeach
							</tbody>
						</table>
					</div>
					<footer class="panel-footer">
						<div class="row">
							{{$order->links()}}
						</div>
					</footer>
				</div>
			</div>
			<div class="table-agile-info">
				<div class="panel panel-default">
					<div class="panel-heading">
					Ph???n H???i T??? Kh??ch H??ng
					</div>
					<div class="table-responsive">
						<table class="table table-striped b-t b-light">
							<thead>
								<tr>
								<th scope="col">H???</th>
								<th scope="col">T??n</th>
								<th scope="col">Email</th>
								<th scope="col">S??? ??i???n Tho???i</th>
								<th scope="col" colspan="2">N???i Dung</th>
								</tr>
							</thead>
							<tbody>
							@foreach($feedback as $id => $a)
							<tr>
								<td>{{$a->firstname}}</td>
								<td>{{$a->lastname}}</td>
								<td>{{$a->email}}</td>
								<td>{{$a->phonenumber}}</td>
								<td>{{$a->message}}</td>
							</tr>
							@endforeach
							</tbody>
						</table>
					</div>
					<footer class="panel-footer">
						<div class="row">
							{{$feedback->links()}}
						</div>
					</footer>
				</div>
			</div>
		</div>
	</section>
	@endsection
