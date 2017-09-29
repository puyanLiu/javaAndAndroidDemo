.class Lcom/ali/user/mobile/account/bind/BindManager$1;
.super Landroid/os/Handler;
.source "BindManager.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/account/bind/BindManager;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/account/bind/BindManager;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/account/bind/BindManager$1;->this$0:Lcom/ali/user/mobile/account/bind/BindManager;

    .line 65
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/account/bind/BindManager$1;)Lcom/ali/user/mobile/account/bind/BindManager;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager$1;->this$0:Lcom/ali/user/mobile/account/bind/BindManager;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 67
    const-string/jumbo v0, "BindManager"

    const-string/jumbo v1, "receive msg: %s, obj: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_0

    .line 69
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ali/user/mobile/account/bind/BindManager$BindWarp;

    .line 70
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ali/user/mobile/account/bind/BindManager$1$1;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/account/bind/BindManager$1$1;-><init>(Lcom/ali/user/mobile/account/bind/BindManager$1;Lcom/ali/user/mobile/account/bind/BindManager$BindWarp;)V

    .line 76
    const-string/jumbo v0, "Aliuser.bindWaiting"

    .line 70
    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 77
    const-string/jumbo v0, "BindManager"

    const-string/jumbo v1, "startWaitingActivityPending thread start"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method
