<?php
include_once 'header.php';
?>
<wrapper>
		<section class="search">
			<div class="search__container">
				<form action="search.php" method="POST">
					<input type="text" name="search" placeholder="Search">
					<button type="submit" name="submit">Search</button>
				</form>
			</div>
		</section>
		
		<h1 class="h1-title">Front page</h1>

		<section class="article">
			<h2 class="article__title">
				All articles:
			</h2>
			<div class="article__container">
				<?php
					$sql = "SELECT * FROM article";
					$result = mysqli_query($conn, $sql);
					$query_results = mysqli_num_rows($result);

					if ($query_results > 0) {
						while ($row = mysqli_fetch_assoc($result)) {
							echo '<div class="article__text">
										<a href="first_article.php" class="text__title">'.$row['a_title'].'</a>
										<p class="text__desc">'.$row['a_text'].'</p>
										<p class="text__date">'.$row['a_date'].'</p>
										<p class="text__author"><span>'.$row['a_author'].'</span></p>
									</div>';
						}
					}
				?>
			</div>
		</section>
</wrapper>


<?php
include_once 'footer.php';
?>