.class Lcom/alipay/android/phone/falcon/camera/CameraManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/falcon/camera/CameraManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager$4;->this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager$4;->this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->access$1(Lcom/alipay/android/phone/falcon/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager$4;->this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;

    iget-object v3, v3, Lcom/alipay/android/phone/falcon/camera/CameraManager;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager$4;->this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;

    iput-boolean v4, v0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->previewing:Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager$4;->this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->access$0(Lcom/alipay/android/phone/falcon/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ed

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager$4;->this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;

    invoke-static {v1}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->access$0(Lcom/alipay/android/phone/falcon/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager$4;->this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;

    iput-boolean v4, v0, Lcom/alipay/android/phone/falcon/camera/CameraManager;->previewing:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager$4;->this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;

    iput-boolean v4, v1, Lcom/alipay/android/phone/falcon/camera/CameraManager;->previewing:Z

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager$4;->this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->access$0(Lcom/alipay/android/phone/falcon/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3eb

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager$4;->this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;

    invoke-static {v1}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->access$0(Lcom/alipay/android/phone/falcon/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
