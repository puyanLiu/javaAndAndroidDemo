.class Lcom/ali/user/mobile/account/bind/BindManager$1$1;
.super Ljava/lang/Object;
.source "BindManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/ali/user/mobile/account/bind/BindManager$BindWarp;

.field final synthetic this$1:Lcom/ali/user/mobile/account/bind/BindManager$1;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/account/bind/BindManager$1;Lcom/ali/user/mobile/account/bind/BindManager$BindWarp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/account/bind/BindManager$1$1;->this$1:Lcom/ali/user/mobile/account/bind/BindManager$1;

    iput-object p2, p0, Lcom/ali/user/mobile/account/bind/BindManager$1$1;->a:Lcom/ali/user/mobile/account/bind/BindManager$BindWarp;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 73
    const-string/jumbo v0, "BindManager"

    const-string/jumbo v1, "startWaitingActivityPending thread execute"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager$1$1;->this$1:Lcom/ali/user/mobile/account/bind/BindManager$1;

    invoke-static {v0}, Lcom/ali/user/mobile/account/bind/BindManager$1;->access$0(Lcom/ali/user/mobile/account/bind/BindManager$1;)Lcom/ali/user/mobile/account/bind/BindManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ali/user/mobile/account/bind/BindManager$1$1;->a:Lcom/ali/user/mobile/account/bind/BindManager$BindWarp;

    iget-object v2, v2, Lcom/ali/user/mobile/account/bind/BindManager$BindWarp;->param:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/ali/user/mobile/account/bind/BindManager$1$1;->a:Lcom/ali/user/mobile/account/bind/BindManager$BindWarp;

    iget-object v3, v3, Lcom/ali/user/mobile/account/bind/BindManager$BindWarp;->onBindCaller:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/account/bind/BindManager;->access$0(Lcom/ali/user/mobile/account/bind/BindManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;)V

    .line 75
    return-void
.end method
