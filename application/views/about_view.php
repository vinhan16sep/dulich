<div id="about">
    <div class="main-cover">
        <div class="mask">
            <img src="https://images.unsplash.com/photo-1482982425600-04078062c865?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80" alt="Image Cover About">

            <div class="content">
                <div class="container">
                    <div class="row">
                        <div class="item col-xs-12 col-lg-6">
                            <h1>Vietnam Travellog</h1>
                            <p class="text-wrapper">
                                Nullam vitae ante sit amet est faucibus pharetra nec sed eros. Aenean in consequat arcu. Nunc efficitur, tellus vitae lacinia vulputate, lorem nisl luctus velit, eu porttitor turpis eros non risus. Etiam ut orci neque. Aliquam vitae ornare diam, eu finibus enim. Nunc ullamcorper lacinia diam sit amet dignissim. Proin consectetur ex augue, quis euismod arcu semper eget. Nullam luctus accumsan porta. Donec lacus est, luctus vel augue a, convallis fringilla erat. Integer et sollicitudin nisi. Integer molestie, augue sed sollicitudin consequat, tellus justo vestibulum metus,
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid" id="content">
        <div class="container" id="introduce">
            <?php for ($i = 0; $i < 3; $i++) { ?>
                <div class="item <?php echo ($i%2!=0)? 'reverse' : '' ?>">
                    <div class="row">
                        <div class="image col-xs-12 col-lg-6">
                            <div class="mask">
                                <img src="https://images.unsplash.com/photo-1482982425600-04078062c865?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80" alt="Image Cover About">
                            </div>
                        </div>
                        <div class="content col-xs-12 col-lg-6">
                            <div class="text">
                                <h2>Title Comes Here</h2>

                                <p>
                                    Cras a dolor non leo interdum ultrices ut ac ligula. Vivamus a aliquet mauris. Morbi malesuada felis dui, quis mattis augue aliquam at. Curabitur vestibulum, sem sed tincidunt dictum, purus risus pretium lorem, vel venenatis odio orci malesuada eros. Ut arcu mauris, condimentum id nulla id, viverra ornare sapien. Etiam in risus nulla. Sed bibendum lectus at felis tristique tincidunt. Pellentesque sed volutpat mi, at mattis massa. Ut id consequat tellus.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>

        <div class="container" id="services">
            <div class="heading">
                <h3>Our Services</h3>
            </div>
            <div class="row">
                <?php for ($i = 0; $i < 3; $i++) { ?>
                    <div class="item col-xs-12 col-lg-4">
                        <div class="mask">
                            <img src="https://images.unsplash.com/photo-1482982425600-04078062c865?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80" alt="Image Cover About">
                        </div>
                        <p>
                            Nulla vitae efficitur risus. Etiam tempor semper velit vitae hendrerit. Nam luctus ligula sit amet bibendum laoreet. Maecenas pulvinar ultrices erat, ut tristique elit sollicitudin sed. Sed felis nibh, semper ut feugiat non, molestie at ipsum. Donec non dolor id quam cursus lacinia. Quisque semper enim at augue ultrices, eget congue ex tempor. Nam quis diam quis risus semper venenatis molestie in magna. Morbi porttitor erat et neque consequat porttitor. Donec vitae maximus nulla, vitae pretium urna. Praesent imperdiet maximus diam, vitae accumsan justo vestibulum vel. Duis congue bibendum cursus. Aenean fringilla lectus lacus, non consectetur tortor placerat a.
                        </p>
                    </div>
                <?php } ?>
            </div>
        </div>

        <div class="container" id="team">
            <div class="heading">
                <h3>Meet Our Team</h3>
            </div>
            <div class="row">
                <div class="item col-xs-12 col-lg-12">
                    <div class="mask">
                        <img src="https://images.unsplash.com/photo-1482982425600-04078062c865?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80" alt="Image Cover About">
                    </div>
                    <p>
                        Nulla vitae efficitur risus. Etiam tempor semper velit vitae hendrerit. Nam luctus ligula sit amet bibendum laoreet. Maecenas pulvinar ultrices erat, ut tristique elit sollicitudin sed. Sed felis nibh, semper ut feugiat non, molestie at ipsum. Donec non dolor id quam cursus lacinia. Quisque semper enim at augue ultrices, eget congue ex tempor. Nam quis diam quis risus semper venenatis molestie in magna. Morbi porttitor erat et neque consequat porttitor. Donec vitae maximus nulla, vitae pretium urna. Praesent imperdiet maximus diam, vitae accumsan justo vestibulum vel. Duis congue bibendum cursus. Aenean fringilla lectus lacus, non consectetur tortor placerat a.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>