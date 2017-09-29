.class Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather$1;
.super Landroid/os/Handler;
.source "LBSInfoGather.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;


# direct methods
.method constructor <init>(Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather$1;->this$0:Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    .line 109
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->access$0()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather$1;->this$0:Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    invoke-static {v0}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->access$1(Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->access$2()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 114
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather$1;->this$0:Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    invoke-static {v0}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->access$3(Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;)V

    goto :goto_0

    .line 115
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->access$4()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather$1;->this$0:Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    invoke-static {v0}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->access$5(Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;)V

    goto :goto_0
.end method
