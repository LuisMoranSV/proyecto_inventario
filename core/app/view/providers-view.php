<div class="row">
	<div class="col-md-12">
		<div class="btn-group pull-right">
			<a href="index.php?view=newprovider" class="btn btn-default"><i class=''></i> Nuevo Proveedor</a>
		</div>
		<h1>Directorio de Proveedores</h1>
		<br>
		
		<?php
			$users = PersonData::getProviders();
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
				<th>Nombre completo</th>
				<th>Direccion</th>
				<th>Email</th>
				<th>Telefono</th>
				<th></th>
			</thead>
			<tbody>
			<?php
				foreach($users as $user):
			?>
				<tr>
				<td><?php echo $user->name." ".$user->lastname; ?></td>
				<td><?php echo $user->address1; ?></td>
				<td><?php echo $user->email1; ?></td>
				<td><?php echo $user->phone1; ?></td>
				<td style="width:130px;">
				<a href="index.php?view=editprovider&id=<?php echo $user->id;?>" class="btn btn-warning btn-xs">Editar</a>
				<a href="index.php?view=delprovider&id=<?php echo $user->id;?>" class="btn btn-danger btn-xs">Eliminar</a>

				</td>
				</tr>
				<?php endforeach;?>
			</tbody>
		</table>
	</div>
</div>