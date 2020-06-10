<div class="row">
	<div class="col-md-12">
	<a href="index.php?view=newuser" class="btn btn-default pull-right"><i class='glyphicon glyphicon-user'></i> Nuevo Usuario</a>
		<h1>Lista de Usuarios</h1>
		<br>
		<?php
		/*
		$u = new UserData();
		print_r($u);
		$u->name = "Luis";
		$u->lastname = "Melendez";
		$u->email = "lmelendez@gmail.com";
		$u->password = sha1(md5("l00lapal00za"));
		$u->add();


		$f = $u->createForm();
		print_r($f);
		echo $f->label("name")." ".$f->render("name");
		*/
		?>
		<?php
			$users = UserData::getAll();
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
				<th>Nombre de usuario</th>
				<th>Email</th>
				<th>Activo</th>
				<th>Admin</th>
				<th></th>
			</thead>
			<tbody>
			<?php
				foreach($users as $user):
			?>
				<tr>
					<td><?php echo $user->name." ".$user->lastname; ?></td>
					<td><?php echo $user->username; ?></td>
					<td><?php echo $user->email; ?></td>
					<td>
						<?php if($user->is_active):?>
							<i class="glyphicon glyphicon-ok"></i>
						<?php endif; ?>
					</td>
					<td>
						<?php if($user->is_admin):?>
							<i class="glyphicon glyphicon-ok"></i>
						<?php endif; ?>
					</td>
					<td style="width:30px;"><a href="index.php?view=edituser&id=<?php echo $user->id;?>" class="btn btn-warning btn-xs">Editar</a></td>
				</tr>
			<?php endforeach; ?>
			</tbody>
		</table>
	</div>
</div>