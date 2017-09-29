.class Lcom/alipay/security/mobile/util/LocalBroadcastManager$1;
.super Landroid/os/Handler;
.source "LocalBroadcastManager.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/util/LocalBroadcastManager;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/util/LocalBroadcastManager;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager$1;->this$0:Lcom/alipay/security/mobile/util/LocalBroadcastManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 100
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 102
    :goto_0
    return-void

    .line 97
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager$1;->this$0:Lcom/alipay/security/mobile/util/LocalBroadcastManager;

    invoke-static {v0}, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->access$000(Lcom/alipay/security/mobile/util/LocalBroadcastManager;)V

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
