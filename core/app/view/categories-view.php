<div class="row">
	<div class="col-md-12">
		<div class="btn-group pull-right">
			<a href="index.php?view=newcategory" class="btn btn-default"><i class='fa fa-th-list'></i> Nueva Categoria</a>
		</div>
		<h1>Categorias</h1>
		<br>
		<?php
			$users = CategoryData::getAll();
		?>

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
				<th>Nombre</th>
				<th></th>
			</thead>
			<tbody>
			<?php
				foreach($users as $user):
			?>
				<tr>
					<td><?php echo $user->name." ".$user->lastname; ?></td>
					<td style="width:130px;"><a href="index.php?view=editcategory&id=<?php echo $user->id;?>" class="btn btn-warning btn-xs">Editar</a> <a href="index.php?view=delcategory&id=<?php echo $user->id;?>" class="btn btn-danger btn-xs">Eliminar</a></td>
				</tr>
			<?php endforeach;?>
			</tbody>
		</table>
	</div>
</div>