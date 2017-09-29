.class Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3$1;
.super Ljava/lang/Object;
.source "LaunchRouter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3$1;->this$1:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 230
    invoke-static {}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->access$0()Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3$1;->this$1:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;

    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;->access$0(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;)Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->access$1(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3$1;->this$1:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;

    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;->access$0(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;)Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->access$1(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 235
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->exit()V

    .line 236
    return-void
.end method
