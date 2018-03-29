
		<script type="text/javascript">
			$(document).ready(function(){
				$("#category-menu li:first-of-type").addClass("selected");
				$('#orders article').hide();
				$('#orders article:first-of-type').show();
			});
			$(document).on('click', '#category-menu li', function(){
				$('#category-menu li').removeClass('selected')
				$(this).addClass('selected');
				$('#orders article').hide();
				$('#' + $(this).attr('href')).show();
			});
		</script>
		<section id="orders">
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
				<?php foreach ($dishes as $dish): if ($dish->cat_slug == $category->cat_slug):?>
					<li>
						<img src="" alt="<?php echo $dish->name ?>">
						<h4 id="<?php echo $dish->dish_code ?>"><?php echo $dish->name ?></h4>
						<p><?php echo $dish->description ?></p>
					</li>
				<?php endif; endforeach ?>
				</ul>
			</article>
			<?php endforeach; ?>				
		</section>