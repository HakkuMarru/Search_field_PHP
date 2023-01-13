<?php
include_once 'header.php';
?>
<h1 class="h1-title">Search page</h1>

<section class="article">
	<?php
	if (isset($_POST['submit'])) {
		$search = mysqli_real_escape_string($conn, $_POST['search']);
		$sql = "SELECT * FROM article WHERE a_title LIKE '%$search%' 
		OR a_text LIKE '%$search%' OR a_author LIKE '%$search%' 
		OR a_date LIKE '%$search%'";
		$result = mysqli_query($conn, $sql);
		$query_result = mysqli_num_rows($result);

		if ($query_result == 1) {
			echo '<h2 class="result__title">There is 1 result:</h2>';
		} elseif ($query_result > 1) {
			echo '<h2 class="result__title">There are ' . $query_result . ' results:</h2>';
		} else {
			echo '';
		}
	}
	?>
	<div class="article__container">
		<?php
		if (isset($_POST['submit'])) {
			if ($query_result > 0) {
				while ($row = mysqli_fetch_assoc($result)) {
					echo '<div class="article__text">
								<a href="first_article.php" class="text__title">'.$row['a_title'].'</a>
								<p class="text__desc">'.$row['a_text'].'</p>
								<p class="text__date">'.$row['a_date'].'</p>
								<p class="text__author"><span>'.$row['a_author'].'</span></p>
							</div>';
				}
			} else {
				echo '<h2 class="article__title" style="color:#222">There are no results matching your search</h2>';
			}
		}
		?>
	</div>
</section>

<?php
include_once 'footer.php';
?>