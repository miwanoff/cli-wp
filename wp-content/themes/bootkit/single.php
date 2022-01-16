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

        get_template_part('partials/posts/content', 'excerpt');

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