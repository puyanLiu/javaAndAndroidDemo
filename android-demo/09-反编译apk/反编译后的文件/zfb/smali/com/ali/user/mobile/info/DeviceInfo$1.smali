.class Lcom/ali/user/mobile/info/DeviceInfo$1;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/info/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/info/DeviceInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/info/DeviceInfo$1;->this$0:Lcom/ali/user/mobile/info/DeviceInfo;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo$1;->this$0:Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/info/DeviceInfo;->access$0(Lcom/ali/user/mobile/info/DeviceInfo;Ljava/lang/String;)V

    .line 28
    return-void
.end method
