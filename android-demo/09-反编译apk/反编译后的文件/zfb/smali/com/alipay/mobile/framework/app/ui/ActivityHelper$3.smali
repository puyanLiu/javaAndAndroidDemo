.class Lcom/alipay/mobile/framework/app/ui/ActivityHelper$3;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->access$200(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->access$100(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->sendUserLeaveHintBroadcast(Landroid/app/Activity;)V

    .line 306
    :cond_0
    return-void
.end method
