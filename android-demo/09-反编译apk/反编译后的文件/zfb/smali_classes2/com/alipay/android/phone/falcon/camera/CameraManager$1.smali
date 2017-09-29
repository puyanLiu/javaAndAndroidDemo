.class Lcom/alipay/android/phone/falcon/camera/CameraManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/falcon/camera/CameraManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager$1;->this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager$1;->this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->access$0(Lcom/alipay/android/phone/falcon/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    if-nez p1, :cond_0

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    :goto_0
    iget-object v1, p0, Lcom/alipay/android/phone/falcon/camera/CameraManager$1;->this$0:Lcom/alipay/android/phone/falcon/camera/CameraManager;

    invoke-static {v1}, Lcom/alipay/android/phone/falcon/camera/CameraManager;->access$0(Lcom/alipay/android/phone/falcon/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/16 v1, 0x3ee

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method
