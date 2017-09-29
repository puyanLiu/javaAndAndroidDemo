.class public Lcom/alipay/android/phone/falcon/camera/CameraManager;
.super Ljava/lang/Object;


# instance fields
.field private autoFocusAndTakePreviewCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private autoFocusCallbackAndTakePic:Landroid/hardware/Camera$AutoFocusCallback;

.field public focusMode:Ljava/lang/String;

.field public isContinuesFocusMode:Z

.field public jpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mCamera:Landroid/hardware/Camera;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field public otherFocusMode:Z

.field public pictureResolution:Landroid/graphics/Point;

.field public preivewResolution:Landroid/graphics/Point;

.field private previewCallback:Landroid/hardware/Camera$PreviewCallback;

.field public previewing:Z

.field public screenResolution:Landroid/graphics/Point;

.field private shutterSound:Z

.field private uApp:Lcom/alipay/android/phone/falcon/common/UtilApp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/alipay/android/phone/falcon/common/UtilApp;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->shutterSound:Z

    iput-boolean v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->previewing:Z

    iput-object v2, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->focusMode:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->isContinuesFocusMode:Z

    iput-boolean v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->otherFocusMode:Z

    new-instance v0, Lcom/alipay/android/phone/falcon/camera/CameraManager$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/falcon/camera/CameraManager$1;-><init>(Lcom/alipay/android/phone/falcon/camera/CameraManager;)V

    iput-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->previewCallback:Landroid/hardware/Camera$PreviewCallback;

    new-instance v0, Lcom/alipay/android/phone/falcon/camera/CameraManager$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/falcon/camera/CameraManager$2;-><init>(Lcom/alipay/android/phone/falcon/camera/CameraManager;)V

    iput-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->autoFocusAndTakePreviewCallback:Landroid/hardware/Camera$AutoFocusCallback;

    new-instance v0, Lcom/alipay/android/phone/falcon/camera/CameraManager$3;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/falcon/camera/CameraManager$3;-><init>(Lcom/alipay/android/phone/falcon/camera/CameraManager;)V

    iput-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    new-instance v0, Lcom/alipay/android/phone/falcon/camera/CameraManager$4;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/falcon/camera/CameraManager$4;-><init>(Lcom/alipay/android/phone/falcon/camera/CameraManager;)V

    iput-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->autoFocusCallbackAndTakePic:Landroid/hardware/Camera$AutoFocusCallback;

    iput-object p2, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->uApp:Lcom/alipay/android/phone/falcon/common/UtilApp;

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/falcon/camera/CameraManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/falcon/camera/CameraManager;)Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/falcon/camera/CameraManager;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->previewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method private static varargs findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v3, p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0

    :cond_2
    aget-object v0, p1, v2

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private isForceModeAuto()Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v2, "Meizu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "M35"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "SM-G9280"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "R819T"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "Coolpad 8720L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "Che1-CL10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "CHM-CL00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "G7-UL20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v2, "C8817D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "HTC 802w"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isForceModeMacroAuto()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isWhiteBalanceAuto()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "R819T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized SetCameraPara()V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;-><init>(Landroid/content/Context;)V

    const v1, 0x225510

    invoke-static {v1}, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->setMaxPicturePixels(I)V

    const v1, 0x4b000

    invoke-static {v1}, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->setMinPicturePixels(I)V

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, v0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, v0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->preivewResolution:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, v0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->cameraPicturePointResolution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, v0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->cameraPicturePointResolution:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->pictureResolution:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    iget-object v0, v0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->screenResolution:Landroid/graphics/Point;

    invoke-direct {v1, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->screenResolution:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->preivewResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->preivewResolution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->pictureResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->pictureResolution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "continuous-picture"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "continuous-video"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "auto"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->focusMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->focusMode:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "macro"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->focusMode:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->isForceModeAuto()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->isContinuesFocusMode:Z

    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->isForceModeMacroAuto()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "macro"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->isWhiteBalanceAuto()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "twilight"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->focusMode:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->focusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->focusMode:Ljava/lang/String;

    :cond_5
    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->focusMode:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->focusMode:Ljava/lang/String;

    const-string/jumbo v2, "continuous-picture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->focusMode:Ljava/lang/String;

    const-string/jumbo v2, "continuous-video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->isContinuesFocusMode:Z

    :cond_7
    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->focusMode:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->otherFocusMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized StopPreview()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->previewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelAutoFocus()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeCamera()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized forceStopPreview()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->previewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoFocusPic()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "getAutoFocusPic()"

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/common/UtilApp;->falconLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->isContinuesFocusMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->otherFocusMode:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->justTakePicture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->autoFocusCallbackAndTakePic:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ed

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurCameraParam()Landroid/hardware/Camera$Parameters;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPreview()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "getPreview"

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/common/UtilApp;->falconLog(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->isContinuesFocusMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->otherFocusMode:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->justGetPreviewImg()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->startPreview()V

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->autoFocusAndTakePreviewCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v0, "getPreview catch"

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/common/UtilApp;->falconLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ec

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPreviewHeight()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPreviewWidth()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCameraOpen()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized justGetPreviewImg()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->startPreview()V

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->previewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3f0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized justTakePicture()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->previewing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3f1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->previewing:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->previewing:Z

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized openCamera(Landroid/view/SurfaceHolder;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->closeCamera()V

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCameraFlashModel(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized setCameraNull()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startPreview()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->previewing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->previewing:Z

    const-string/jumbo v0, "mCamera.startPreview()"

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/common/UtilApp;->falconLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
