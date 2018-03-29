		<script type="text/javascript">
			$(document).ready(function(){
				$('ul.main-menu li').hide();
				$('ul.main-menu li:first-of-type').show();
			});
			$(document).on('click', 'ul.category-menu li', function(){
				$('ul.category-menu li').removeClass('selected')
				$(this).addClass('selected');
				$('ul.main-menu li').hide();
				$('ul.main-menu li#' + $(this).attr('href')).show();
			});
		</script>
		<section class="orders">
			<ul class="category-menu">
				<?php foreach ($categories as $category): ?>
					<li href="<?php echo $category->cat_slug ?>"><?php echo $category->name ?></li>
				<?php endforeach; ?>
			</ul>
			<ul class="main-menu">
				<?php foreach ($categories as $category): ?>
					<li id="<?php echo $category->cat_slug ?>" >
						<?php foreach ($dishes as $dish): ?>
							<?php if ($dish->cat_slug == $category->cat_slug): ?>
								<article>
									<img src="<?php echo $dish->dish_code ?>" alt="<?php echo $dish->name ?>">
									<p class= "menu-item" id="<?php echo $dish->dish_code ?>">
										<strong><?php echo $dish->name ?></strong>
									</p>
									<p><?php echo $dish->description ?></p>
								</article>
							<?php endif?>
						<?php endforeach; ?>
					</li>
				<?php endforeach; ?>				
			</ul>
		</section>