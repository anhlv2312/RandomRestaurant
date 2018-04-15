		<section id="modal">
			<div class="body">
				<div class="header"></div>
				<div class="main"></div>
				<div class="footer">
					<span>Write Your Review</span>
					<span class="close">Close</span>
				</div>
			</div>
		</section>
		<script type="text/javascript">
			$(window).on("scroll", function(e) {
				if ($(this).scrollTop() > 150) {
					$('#category-menu').addClass("category-menu-fixed");
					$('#order-detail').addClass("order-detail-fixed");
				} else {
					$('#category-menu').removeClass("category-menu-fixed");
					$('#order-detail').removeClass("order-detail-fixed");
				}

			});
			$(document).ready(function(){
				$("#category-menu li:first-of-type").addClass("selected");
				$('#main-menu article').hide();
				$('#main-menu article:first-of-type').show();
			});
			$("#modal .close").on('click', function(){
				$('#modal').removeClass('visible');
			});

			$("#modal .body").on('click', function(event){
				if (event.target == this){
					$('#modal').removeClass('visible');
				}
			});
			$(document).on('click', '#main-menu article h3', function(){
				$('#modal .header').text($(this).text());
				load_reviews($(this).attr('dish_code'));
				$('#modal').addClass('visible');
			});
			$(document).on('click', '#category-menu li', function(){
				$('#category-menu li').removeClass('selected')
				$(this).addClass('selected');
				$('#main-menu article').hide();
				$('#' + $(this).attr('href')).show();
			});
			$(document).on('click', '#main-menu article button', function(){
				add_item($(this).attr('dish_code'));
			});

			$(document).on('click', '#bag .remove', function(){
				remove_item($(this).attr('row_id'));
			});


			function add_item(dish_code) {
				$.when($.ajax("<?php echo base_url('orders/add_item_to_bag/') ?>" + dish_code)).then(function(data, textStatus, jqXHR ) {
					update_bag();
				});
			};

			function remove_item(row_id) {
				$.when($.ajax("<?php echo base_url('orders/remove_item_from_bag/') ?>" + row_id)).then(function(data, textStatus, jqXHR ) {
					update_bag();
				});
			};
			function load_reviews(dish_code) {
				$('#modal .main').empty();
				$.getJSON("<?php echo base_url('reviews/get_reviews_by_dish/') ?>" + dish_code, function(data){
					$.each(data, function(i, review){
						$('#modal .main').append('<h3 class="review-user">' + review.user_id + '</h3>');
						$('#modal .main').append('<p class="review-content">' + review.content + '</p>');
					});
				});
			};

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
						<figure id="<?php echo $dish->dish_code ?>" draggable="true" ondragstart="drag(event)" style="background-image: url('<?php echo base_url('images/sample.jpg') ?>'">
							<p>Drag me to your bag please!</p>
						</figure>
						<button dish_code="<?php echo $dish->dish_code ?>"></button>
						<h3 dish_code="<?php echo $dish->dish_code ?>"><?php echo ltrim($dish->dish_code, '0') . '. ' . $dish->name ?></h3>
						<p><?php echo $dish->description ?></p>
					</li>
				<?php endif; endforeach ?>
				</ul>
			</article>
			<?php endforeach; ?>				
		</section>