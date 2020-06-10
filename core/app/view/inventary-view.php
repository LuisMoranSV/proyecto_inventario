<div class="row">
	<div class="col-md-12">

		<h1><i class="glyphicon glyphicon-stats"></i> Inventario de Productos</h1>
		<div class="clearfix"></div>


		<?php
			$products = ProductData::getAll();
		?>

		<br>

		<!-- Iniciar Datatables -->
		<link rel="stylesheet" type="text/css" href="plugins/datatables/jquery.dataTables.css">
  
		<script type="text/javascript" charset="utf8" src="plugins/datatables/jquery.dataTables.js"></script>

		<script>
			$(document).ready( function () {
				$('#table_id').DataTable();
			} );
		</script>

		<!-- Tabla con referencia a datatables -->
		<table id="table_id" class="table table-bordered table-hover display">
			<thead>
				<th>Codigo</th>
				<th>Producto</th>
				<th>Disponibles</th>
				<th></th>
			</thead>
			<?php foreach($products as $product):
			$q=OperationData::getQYesF($product->id);
			?>
			<tr class="<?php if($q<=$product->inventary_min/2){ echo "danger";}else if($q<=$product->inventary_min){ echo "warning";}?>">
				<td><?php echo $product->barcode; ?></td>
				<td><?php echo $product->name; ?></td>
				<td>
					
					<?php echo $q; ?>

				</td>
				<td style="width:93px;">
				<!--<a href="index.php?view=input&product_id=<?php echo $product->id; ?>" class="btn btn-xs btn-primary"><i class="glyphicon glyphicon-circle-arrow-up"></i> Alta</a>-->
				<!--<a href="index.php?view=history&product_id=<?php echo $product->id; ?>" class="btn btn-xs btn-success"><i class="glyphicon glyphicon-time"></i> Historial</a>
				</td> -->
			</tr>
			<?php endforeach;?>
		</table>

	</div>
</div>