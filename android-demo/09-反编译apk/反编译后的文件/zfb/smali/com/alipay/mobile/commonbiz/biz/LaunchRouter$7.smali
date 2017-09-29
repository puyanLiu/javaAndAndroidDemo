.class Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$7;
.super Ljava/lang/Object;
.source "LaunchRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$7;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$7;)Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$7;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 579
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$7$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$7$1;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$7;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 593
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 594
    return-void
.end method
