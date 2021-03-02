<?php
use App\NumberHelper;
use App\UrlHelper;
use App\TableHelper;

define('PER_PAGE', 20);

require 'vendor/autoload.php';
$pdo = new PDO('mysql:host=localhost;dbname=tableau_dynamique;charset=utf8', 'root', 'root', [
  PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
  PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
]);
$query = "SELECT * FROM product";
$queryCount = "SELECT COUNT(id) as count FROM product";
$params = [];
$sortable = ['id', 'name', 'city', 'price', 'address'];

//Recherche par ville
if(!empty($_GET["q"])) {
  $query .= " WHERE city LIKE :city";
  $queryCount .= " WHERE city LIKE :city";
  $params['city'] = '%' . $_GET["q"] . '%';
}

//Organisation
if (!empty($_GET['sort']) && in_array($_GET['sort'], $sortable)) {
  $direction = $_GET['dir'] ?? 'asc';
  if (!in_array($direction, ['asc', 'desc'])) {
    $direction = 'asc';
  }
  $query .= " ORDER BY " . $_GET['sort'] . " $direction";
}


//Pagination
$page = (int)($_GET["p"] ?? 1);
$offset = ($page - 1) * PER_PAGE;

$query .= " LIMIT " . PER_PAGE . " OFFSET  $offset";

$statement = $pdo->prepare($query);
$statement->execute($params);
$products = $statement->fetchAll();

$statement = $pdo->prepare($queryCount);
$statement->execute($params);
$count = (int)$statement->fetch()['count'];
$pages = ceil($count / PER_PAGE);
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
  <title>Biens Immobiliers</title>
</head>
<style>
  body {background: rgba(43, 157, 109, 0.1);}
</style>
<body class="p-4">
  <h1>Les biens immobiliers</h1>
  <h4>Clique sur les entêtes pour organiser la liste ou filtre par ville ou parcours les pages</h4>
  <form action="" class="mb-4">
    <div class="form-group">
      <input type="text" name="q" class="form-control" placeholder="Rechercher par ville" value="<?= htmlentities($_GET["q"] ?? null) ?>">
    </div>
    <button class="btn btn-primary">Rechercher</button>
  </form>
  <table class="table table-striped">
    <thead>
      <tr>
        <th><?= TableHelper::sort('id', 'ID', $_GET) ?></th>
        <th><?= TableHelper::sort('name', 'Nom', $_GET) ?></th>
        <th><?= TableHelper::sort('price', 'Prix', $_GET) ?></th>
        <th><?= TableHelper::sort('city', 'Ville', $_GET) ?></th>
        <th><?= TableHelper::sort('address', 'Adresse', $_GET) ?></th>
      </tr>
    </thead>
    <tbody>
      <?php foreach($products as $product): ?>
        <tr>
          <td>#<?= $product['id'] ?></td>
          <td><?= $product['name'] ?></td>
          <td><?= NumberHelper::price($product['price']); ?></td>
          <td><?= $product['city'] ?></td>
          <td><?= $product['address'] ?></td>
        </tr>
      <?php endforeach ?>
    </tbody>
  </table>
  <?php if($pages > 1 && $page > 1): ?>
    <a href="?<?= UrlHelper::withParam($_GET, "p", $page - 1) ?>" class="btn btn-primary">Page précédente</a>
  <?php endif ?>
<?php if($pages > 1 && $page < $pages): ?>
  <a href="?<?= UrlHelper::withParam($_GET, "p", $page + 1) ?>" class="btn btn-primary">Page suivante</a>
<?php endif ?>
</body>
</html>
