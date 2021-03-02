<?php
namespace App;
use App\UrlHelper;

class TableHelper {

  public static function sort(string $sortKey, string $label, array $data): string {
    $sort = $data['sort'] ?? null;
    $direction = $data['dir'] ?? null;
    $icon = "";
    if ($sort === $sortKey) {
      $icon = $direction === 'asc' ? <<<HTML
      <i class="fas fa-chevron-up"></i>
      HTML
      : <<<HTML
      <i class="fas fa-chevron-down"></i>
      HTML;
    }
    $url = UrlHelper::withParams($data, [
      'sort' => $sortKey,
      'dir' => $direction === 'asc' && $sort === $sortKey ? 'desc' : 'asc'
    ]);
    return <<<HTML
    <a href="?$url">$label $icon</a>
    HTML;
  }
}
?>
