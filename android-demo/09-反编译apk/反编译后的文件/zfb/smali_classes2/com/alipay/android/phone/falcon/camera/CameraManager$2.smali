.class Lcom/alipay/android/phone/falcon/camera/CameraManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/falcon/camera/CameraManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager$2;->this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "autoFocusAndTakePreviewCallback:success"

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/common/UtilApp;->falconLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager$2;->this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->access$1(Lcom/alipay/android/phone/falcon/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager$2;->this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;

    invoke-static {v1}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->access$2(Lcom/alipay/android/phone/falcon/camera/CameraManager;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager$2;->this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "autoFocusAndTakePreviewCallback catch"

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/common/UtilApp;->falconLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager$2;->this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->access$0(Lcom/alipay/android/phone/falcon/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ec

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager$2;->this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;

    invoke-static {v1}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->access$0(Lcom/alipay/android/phone/falcon/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager$2;->this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->access$0(Lcom/alipay/android/phone/falcon/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager$2;->this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;

    invoke-static {v1}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->access$0(Lcom/alipay/android/phone/falcon/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
