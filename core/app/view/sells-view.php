<div class="row">
	<div class="col-md-12">
		<h1><i class='glyphicon glyphicon-shopping-cart'></i> Lista de Ventas</h1>
		<div class="clearfix"></div>


		<?php
			$products = SellData::getSells();
		?>

		<br>

		<link rel="stylesheet" type="text/css" href="plugins/datatables/jquery.dataTables.css">
		
		<script type="text/javascript" charset="utf8" src="plugins/datatables/jquery.dataTables.js"></script>

		<script>
			$(document).ready( function () {
				$('#table_id').DataTable();
			} );
		</script>

		<table id="table_id" class="table table-bordered table-hover display">
			<thead>
				<th></th>
				<th>Productos</th>
				<th>Total</th>
				<th>Fecha</th>
				<th></th>
			</thead>
			<?php foreach($products as $sell):?>

			<tr>
				<td style="width:30px;">
				<a href="index.php?view=onesell&id=<?php echo $sell->id; ?>" class="btn btn-xs btn-default"><i class="glyphicon glyphicon-eye-open"></i></a></td>

				<td>

		<?php
		$operations = OperationData::getAllProductsBySellId($sell->id);
		echo count($operations);
		?>
				<td>

		<?php
		$total= $sell->total-$sell->discount;
			/*foreach($operations as $operation){
				$product  = $operation->getProduct();
				$total += $operation->q*$product->price_out;
			}*/
				echo "<b>$ ".number_format($total)."</b>";

		?>			

				</td>
				<td><?php echo $sell->created_at; ?></td>
				<td style="width:30px;"><a href="index.php?view=delsell&id=<?php echo $sell->id; ?>" class="btn btn-xs btn-danger"><i class="fa fa-trash"></i></a></td>
			</tr>

		<?php endforeach; ?>

		</table>
	</div>
</div>