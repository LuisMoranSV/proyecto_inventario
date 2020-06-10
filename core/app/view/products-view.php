<div class="row">
	<div class="col-md-12">
		<div class="btn-group  pull-right">
			<a href="index.php?view=newproduct" class="btn btn-default">Agregar Producto</a>
		</div>
				<h1>Lista de Productos</h1>

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
				<th>Imagen</th>
				<th>Nombre</th>
				<th>Precio Entrada</th>
				<th>Precio Salida</th>
				<th>Categoria</th>
				<th>Minima</th>
				<th>Activo</th>
				<th></th>
			</thead>
			<?php foreach($products as $product):?>
			<tr>
				<td><?php echo $product->barcode; ?></td>
				<td>
					<?php if($product->image!=""):?>
						<img src="storage/products/<?php echo $product->image;?>" style="width:64px;">
					<?php endif;?>
				</td>
				<td><?php echo $product->name; ?></td>
				<td>$ <?php echo number_format($product->price_in,2,'.',','); ?></td>
				<td>$ <?php echo number_format($product->price_out,2,'.',','); ?></td>
				<td><?php if($product->category_id!=null){echo $product->getCategory()->name;}else{ echo "<center>----</center>"; }  ?></td>
				<td><?php echo $product->inventary_min; ?></td>
				<td><?php if($product->is_active): ?><i class="fa fa-check"></i><?php endif;?></td>
				

				<td style="width:70px;">
				<a href="index.php?view=editproduct&id=<?php echo $product->id; ?>" class="btn btn-xs btn-warning"><i class="glyphicon glyphicon-pencil"></i></a>
				<a href="index.php?view=delproduct&id=<?php echo $product->id; ?>" class="btn btn-xs btn-danger"><i class="fa fa-trash"></i></a>
				</td>
			</tr>
			<?php endforeach;?>
		</table>
	</div>
</div>