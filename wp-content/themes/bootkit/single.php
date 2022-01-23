<?php
get_header();
?>
<!-- Page Content -->
<div class="container">


    <!-- Marketing Icons Section -->
    <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-8">
            <?php if (have_posts()) {
    while (have_posts()) {
        the_post();
        global $post;
        $author_ID = $post->post_author;
        $author_URL = get_author_posts_url($author_ID);
        ?>
            <!-- Title -->
            <h1 class="mt-4"><?php the_title()?></h1>
            <!-- Post category: -->
            <h2 class="mt-4"><?php the_category(" ")?></h2>

            <!-- Date/Time -->
            <p><?php the_time(get_option('date_format'));
        echo " ";
        the_time(get_option('time_format'));?></p>
            <hr>


            <!-- Author -->
            <p class="lead">
                by
                <a href="<?php echo $author_URL; ?>"><?php the_author();?></a>
            </p>
            <hr>

            <!-- Preview Image -->
            <?php
if (has_post_thumbnail()) {
            the_post_thumbnail("full", ["class" => "card-img-top"]);
        }
        ?>
            <hr>


            <!-- Post Content -->
            <?php the_content();

        $defaults = array(
            'before' => '<div class="row justify-content-center align-items-center">' . __('Pages:'),
            'after' => '</div>',
        );
        wp_link_pages($defaults);
        edit_post_link();
        ?>
            <!-- Post Author Info -->
            <div class="card">
                <div class="card-header">
                    <strong>
                        Posted by
                        <a href="<?php echo $author_URL; ?>"><?php the_author();?></a>
                    </strong>
                </div>
                <div class="card-body">
                    <div class="author-image">
                        <?php echo get_avatar($author_ID, 90, '', false, ['class' => 'img-circle']); ?>
                    </div>
                    <?php echo nl2br(get_the_author_meta('description')); ?>
                </div>
            </div><!-- Post Single - Author End -->

            <hr>
            <!-- Tag cloud -->
            <?php the_tags('', ', ');?>
            <hr>
            <!-- Pagination -->
            <ul class="pagination justify-content-center mb-4">
                <li class="page-item">
                    <?php previous_post_link();?>
                </li>
                <li class="page-item">
                    <?php next_post_link();?>
                </li>
            </ul>

            <?php
if (comments_open() || get_comments_number()) {
            comments_template();
        }
        ?>
            <?php
}
}
?>




        </div>

        <?php get_sidebar();?>
    </div>
    <!-- /.row -->
    <hr>


</div>
<!-- /.container -->
<?php
get_footer();
?>