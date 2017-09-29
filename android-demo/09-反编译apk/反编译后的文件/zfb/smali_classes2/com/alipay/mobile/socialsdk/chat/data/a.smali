.class final Lcom/alipay/mobile/socialsdk/chat/data/a;
.super Landroid/os/Handler;
.source "ChatDataManager.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/data/a;->a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    .line 532
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 533
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    .line 537
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 539
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/a;->a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->a(Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;)Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    move-result-object v0

    const-string/jumbo v1, "inputsyncstate"

    const-string/jumbo v2, "state"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 541
    :cond_0
    return-void
.end method
