
		<script type="text/javascript">
			$(document).ready(function(){
				$("#category-menu li:first-of-type").addClass("selected");
				$('#main-menu article').hide();
				$('#main-menu article:first-of-type').show();
			});
			$("#modal .close").on('click', function(){
				$('#modal').prop('open', false);
			});

			$("#modal .body").on('click', function(event){
				if (event.target == this){
					$('#modal').prop('open', false);
				}
			});

			$(document).on('click', '#main-menu article h3', function(){
				$('#modal .header').text($(this).text());
				load_reviews($(this).attr('id'));
				$('#modal').prop('open', true);
			});
			$(document).on('click', '#category-menu li', function(){
				$('#category-menu li').removeClass('selected')
				$(this).addClass('selected');
				$('#main-menu article').hide();
				$('#' + $(this).attr('href')).show();
			});
			function load_reviews(dish_code) {
				$('#modal .main').empty();
				$.getJSON("<?php echo base_url('reviews/get_reviews_by_dish/') ?>" + dish_code, function(data){
					$.each(data, function(i, review){
						$('#modal .main').append('<h3 class="review-user">' + review.user_id + '</h3>')
						$('#modal .main').append('<p class="review-content">' + review.content + '</p>')
					});
				});
			}
		</script>
		<section id="main-menu">
			<nav id="category-menu">
				<ul>
					<?php foreach ($categories as $category): ?>
						<li href="<?php echo $category->cat_slug ?>"><?php echo $category->name ?></li>
					<?php endforeach; ?>
				</ul>
			</nav>
			<?php foreach ($categories as $category): ?>
			<article id="<?php echo $category->cat_slug ?>">
				<ul>
				<?php foreach ($dishes as $dish): if ($dish->cat_slug == $category->cat_slug): ?>
					<li>
						<figure style="background: url('<?php echo base_url('images/sample.jpg') ?>')" alt="<?php echo $dish->name ?>"></figure>
						<h3 id="<?php echo $dish->dish_code ?>"><?php echo ltrim($dish->dish_code, '0') . '. ' . $dish->name ?></h3>
						<p><?php echo $dish->description ?></p>
					</li>
				<?php endif; endforeach ?>
				</ul>
			</article>
			<?php endforeach; ?>				
		</section>