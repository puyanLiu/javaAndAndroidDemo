.class Landroid/support/v13/app/FragmentCompat$MncFragmentCompatImpl;
.super Landroid/support/v13/app/FragmentCompat$ICSMR1FragmentCompatImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v13/app/FragmentCompat$ICSMR1FragmentCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/support/v13/app/FragmentCompat23;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method

.method public shouldShowRequestPermissionRationale(Landroid/app/Fragment;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1, p2}, Landroid/support/v13/app/FragmentCompat23;->shouldShowRequestPermissionRationale(Landroid/app/Fragment;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
