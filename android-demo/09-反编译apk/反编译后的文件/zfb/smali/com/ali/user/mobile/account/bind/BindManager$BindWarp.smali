.class Lcom/ali/user/mobile/account/bind/BindManager$BindWarp;
.super Ljava/lang/Object;
.source "BindManager.java"


# instance fields
.field onBindCaller:Lcom/ali/user/mobile/account/bind/OnBindCaller;

.field param:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/ali/user/mobile/account/bind/BindManager;


# direct methods
.method public constructor <init>(Lcom/ali/user/mobile/account/bind/BindManager;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/ali/user/mobile/account/bind/BindManager$BindWarp;->this$0:Lcom/ali/user/mobile/account/bind/BindManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput-object p2, p0, Lcom/ali/user/mobile/account/bind/BindManager$BindWarp;->param:Landroid/os/Bundle;

    .line 397
    iput-object p3, p0, Lcom/ali/user/mobile/account/bind/BindManager$BindWarp;->onBindCaller:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    .line 398
    return-void
.end method
