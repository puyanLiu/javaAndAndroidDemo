.class public Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightCameraView;
.super Landroid/widget/FrameLayout;


# static fields
.field public static final MODE_PHOTO:I = 0x1

.field public static final MODE_VIDEO:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public cancelRecord()V
    .locals 0

    return-void
.end method

.method public getCameraId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public reopenCamera(I)Landroid/hardware/Camera;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setOnRecordListener(Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightCameraView$OnRecordListener;)V
    .locals 0

    return-void
.end method

.method public setOnScrollListener(Lcom/alipay/android/phone/mobilecommon/multimedia/widget/SightCameraView$OnScrollListener;)V
    .locals 0

    return-void
.end method

.method public startRecord()V
    .locals 0

    return-void
.end method

.method public stopRecord()V
    .locals 0

    return-void
.end method

.method public switchCamera()Landroid/hardware/Camera;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
