		<section id="modal">
			<div class="body">
				<div class="header"><span class="dish_name"></span>&nbsp;<span class="dish_rating"></span></div>
				<div class="main"></div>
				<?php if (isset($_SESSION['user_id'])): ?>
				<div class="review">
					<h3 class="review-user">Your Review</h3>
					<span class="stars">
						<span class="star" rating="1">&#9734;</span>
						<span class="star" rating="2">&#9734;</span>
						<span class="star" rating="3">&#9734;</span>
						<span class="star" rating="4">&#9734;</span>
						<span class="star" rating="5">&#9734;</span>
					</span>
					<textarea rows="4" id="content"></textarea>
				</div>
				<?php endif ?>
				<div class="footer">
					<?php if (isset($_SESSION['user_id'])): ?>
						<span class="close">Save &amp; Close</span>
					<?php else: ?>
						<span class="close">Close</span>
					<?php endif ?>
				</div>
			</div>
		</section>
		<script type="text/javascript">
			$(document).ready(function(){
				$("#category-menu li:first-of-type").addClass("selected");
				$('#main-menu article').hide();
				$('#main-menu article:first-of-type').show();
			});
			$('#modal .close').on('click', function(){
				hide_model();
				update_review();
			});

			$('#modal .body').on('click', function(event){
				if (event.target == this){
					hide_model();
				}
			});

			$(document).on('click', '#modal .review .star', function(){
				$('#content').attr('rating',$(this).attr('rating'))
				$('#modal .review .stars').html(show_stars($(this).attr('rating')));
			});


			$(document).on('click', '#main-menu article h3 span', function(){
				$('#modal .header .dish_name').text($(this).text());
				load_reviews($(this).attr('dish_code'));
				show_model();
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

			function show_model() {
				$('#modal').show();
				$('body').addClass('modal');
			}

			function hide_model() {
				$('#modal').hide();
				$('body').removeClass('modal');
			}

			function update_review() {
				dish_code = $('#content').attr('dish_code');
				content = $('#content').val() ? $('#content').val() : "";
				rating = $('#content').attr('rating');
				if (rating > 0 || content.trim() !== '') {
					$.post('<?php echo base_url('reviews/update_review') ?>', {dish_code: dish_code, content: content, rating: rating}, function(data) {
						console.log(data);
						$('#content').text(data.content);
						$('#modal #' + user_id).text(data.content);
					}, 'json');
				}
			}

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

			function show_stars(num) {
				stars = '';
				rating = 1;
				for (i=1; i<=5; i++) {
					if (i <= num) {
						stars += '<span class="star" rating="' + i + '">&#x2605;</span>';
					// } else if (i > num && (i-1) < num) {
					//  	stars += '<span class="star" rating="' + i + '">&#x25F4;</span>';
					} else {
						stars += '<span class="star" rating="' + i + '">&#x2606;</span>';
					}
				}
				return stars;
			}

			function load_reviews(dish_code) {
				$('#modal .main').empty();
				$("#content").val('');
				$('#content').attr('rating', 0);
				$('#content').attr('dish_code', dish_code);
				$('#modal .review .stars').html(show_stars(0));
				$.getJSON("<?php echo base_url('reviews/get_reviews/') ?>" + dish_code, function(data){
					var total = 0;
					var count = 0;
					$.each(data, function(i, review){
						if (review.rating > 0) {
							count++;
							total += Number(review.rating);
						}
						if (review.user_id === user_id) {
							$("#content").val(review.content);
							$('#content').attr('rating', review.rating);
							$('#modal .review .stars').html(show_stars(review.rating));
						} else {
							$('#modal .main').append('<h3>' + review.user_id + '</h3> <span class="stars">' + show_stars(review.rating)) + '</span>';
							$('#modal .main').append('<p id=' + review.user_id + ' class="review-content">' + review.content + '</p>');
						}
					});
					$('#modal .header .dish_rating').html(show_stars(Math.round(total/count)));
				});
			};
		</script>

		<section id="main-menu">
			<nav id="category-menu">
				<ul>
					<?php foreach ($categories as $category): ?>
						<li href="<?php echo $category['cat_slug'] ?>"><?php echo $category['name'] ?></li>
					<?php endforeach; ?>
				</ul>
			</nav>
			<?php foreach ($categories as $category): ?>
			<article id="<?php echo $category['cat_slug'] ?>">
				<ul>
				<?php foreach ($dishes as $dish): if ($dish['cat_slug'] == $category['cat_slug']): ?>
					<li>
						<figure id="<?php echo $dish['dish_code'] ?>" draggable="true" ondragstart="drag(event)" style="background-image: url('<?php echo base_url('images/sample.jpg') ?>'">
							<p>Drag me to your bag please!</p>
						</figure>
						<button dish_code="<?php echo $dish['dish_code'] ?>"></button>
						<h3><span dish_code="<?php echo $dish['dish_code'] ?>"><?php echo ltrim($dish['dish_code'], '0') . '. ' . $dish['name'] ?><span></h3>
						<p><?php echo $dish['description'] ?></p>
					</li>
				<?php endif; endforeach ?>
				</ul>
			</article>
			<?php endforeach; ?>				
		</section>