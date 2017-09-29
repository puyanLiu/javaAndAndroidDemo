.class final Lcom/alipay/pushsdk/push/e;
.super Ljava/lang/Object;
.source "NotificationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/NotificationService;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/NotificationService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lcom/alipay/pushsdk/push/e;->a:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-object p2, p0, Lcom/alipay/pushsdk/push/e;->b:Ljava/lang/String;

    .line 580
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 584
    :try_start_0
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->c()Lcom/alipay/pushsdk/push/m;

    move-result-object v0

    .line 585
    iget-object v1, p0, Lcom/alipay/pushsdk/push/e;->b:Ljava/lang/String;

    .line 584
    invoke-static {v0, v1}, Lcom/alipay/pushsdk/push/g/e;->a(Lcom/alipay/pushsdk/push/m;Ljava/lang/String;)Lcom/alipay/pushsdk/push/g/d;

    move-result-object v0

    .line 586
    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/g/d;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v0

    .line 593
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
