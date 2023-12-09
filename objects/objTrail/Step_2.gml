/// @description Fade out
image_alpha -= fade;
image_xscale -= fade/2;
image_yscale -= fade/2;

if (image_alpha < 0)
{
    instance_destroy();
}


