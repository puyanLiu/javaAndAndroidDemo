.class Lcom/ali/user/mobile/common/api/AliUserLogin$6$1;
.super Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;
.source "AliUserLogin.java"


# instance fields
.field final synthetic this$1:Lcom/ali/user/mobile/common/api/AliUserLogin$6;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/api/AliUserLogin$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6$1;->this$1:Lcom/ali/user/mobile/common/api/AliUserLogin$6;

    .line 382
    invoke-direct {p0}, Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyPacelable(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6$1;->this$1:Lcom/ali/user/mobile/common/api/AliUserLogin$6;

    invoke-static {v0}, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->access$0(Lcom/ali/user/mobile/common/api/AliUserLogin$6;)Lcom/ali/user/mobile/common/api/AliUserLogin;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$7(Lcom/ali/user/mobile/common/api/AliUserLogin;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.ali.user.sdk.login.SUCCESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 386
    return-void
.end method
