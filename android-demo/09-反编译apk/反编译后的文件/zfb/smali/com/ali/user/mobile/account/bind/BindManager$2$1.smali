.class Lcom/ali/user/mobile/account/bind/BindManager$2$1;
.super Ljava/lang/Object;
.source "BindManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Landroid/os/Bundle;

.field private final synthetic c:Lcom/ali/user/mobile/account/bind/OnBindCaller;

.field final synthetic this$1:Lcom/ali/user/mobile/account/bind/BindManager$2;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/account/bind/BindManager$2;Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/account/bind/BindManager$2$1;->this$1:Lcom/ali/user/mobile/account/bind/BindManager$2;

    iput-object p2, p0, Lcom/ali/user/mobile/account/bind/BindManager$2$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/ali/user/mobile/account/bind/BindManager$2$1;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/ali/user/mobile/account/bind/BindManager$2$1;->c:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 319
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager$2$1;->this$1:Lcom/ali/user/mobile/account/bind/BindManager$2;

    invoke-static {v0}, Lcom/ali/user/mobile/account/bind/BindManager$2;->access$0(Lcom/ali/user/mobile/account/bind/BindManager$2;)Lcom/ali/user/mobile/account/bind/BindManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/BindManager$2$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ali/user/mobile/account/bind/BindManager$2$1;->b:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/ali/user/mobile/account/bind/BindManager$2$1;->c:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/account/bind/BindManager;->alipayAccountBind(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;)V

    .line 320
    return-void
.end method
