.class Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;
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
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;)Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 212
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 216
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->access$0()Ljava/lang/String;

    .line 217
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 218
    invoke-static {}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->access$0()Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->access$1(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 220
    invoke-static {}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->access$0()Ljava/lang/String;

    .line 221
    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->access$0()Ljava/lang/String;

    .line 225
    new-instance v0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    invoke-static {v1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->access$1(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;-><init>(Landroid/app/Activity;)V

    .line 226
    const-string/jumbo v1, "\u6743\u9650\u7533\u8bf7"

    const-string/jumbo v2, "\u7531\u4e8e\u652f\u4ed8\u5b9d\u65e0\u6cd5\u83b7\u5f97\u5b58\u50a8\u7a7a\u95f4\u6743\u9650\uff0c\u4e0d\u80fd\u6b63\u5e38\u8fd0\u884c\uff0c\u8bf7\u5728\u201c\u8bbe\u7f6e->\u5e94\u7528->\u652f\u4ed8\u5b9d->\u6743\u9650\u201d\u4e2d\u5f00\u542f\u8be5\u6743\u9650\u540e\u518d\u4f7f\u7528\u652f\u4ed8\u5b9d\u3002"

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3$1;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3$1;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;)V

    .line 237
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v6, v5

    .line 226
    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 243
    :goto_1
    return-void

    .line 214
    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->startMain()V

    goto :goto_1
.end method
