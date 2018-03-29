		<script type="text/javascript">
			$(document).ready(function(){
				$('article.main-menu div').hide();
				$('article.main-menu div:first-of-type').show();
			});
			$(document).on('click', 'ul.category-menu li', function(){
				$('ul.category-menu li').removeClass('selected')
				$(this).addClass('selected');
				$('article.main-menu div').hide();
				$('article.main-menu div.' + $(this).attr('id')).show();
				console.log($(this).attr('id'))
			});
		</script>
		<section>
			<ul class="category-menu">
				<?php foreach ($categories as $category): ?>
					<li id="<?php echo $category->cat_slug ?>"><?php echo $category->name ?></li>
				<?php endforeach; ?>
			</ul>
			<article class="main-menu">
				<?php foreach ($categories as $category): ?>
					<div class="<?php echo $category->cat_slug ?>" >
						<?php foreach ($dishes as $dish): ?>
							<?php if ($dish->cat_slug == $category->cat_slug): ?>
								<p id="<?php echo $dish->dish_code ?>">
									<strong> <?php echo $dish->name ?> </strong>
								</p>
								<p><?php echo $dish->description ?></p>
							<?php endif?>
						<?php endforeach; ?>
					</div>
				<?php endforeach; ?>				
			</article>
		</section>